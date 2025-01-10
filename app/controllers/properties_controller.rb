class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show edit update destroy ]

  # GET /properties or /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1 or /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties or /properties.json
  def create
    @property = Property.new(basic_params)
    puts "Property saved 1-> #{@property.inspect}"
    
    if @property.save
      puts "Property saved -> #{@property.inspect}"
      redirect_to edit_step_property_path(@property, step: Property::CHARACTERISTICS.keys.first), 
        notice: 'Basic property info saved. Now let\'s rate its characteristics!'
    else
      render :new
    end

    # @property = Property.new(property_params)

    # respond_to do |format|
    #   if @property.save
    #     format.html { redirect_to @property, notice: "Property was successfully created." }
    #     format.json { render :show, status: :created, location: @property }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @property.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def edit_step
    # Make sure we find the property
    @property = Property.find(params[:id])
    @characteristic = params[:step]
    @max_score = Property::CHARACTERISTICS[@characteristic.to_sym]
    render 'edit_step'
  end

  def update_step
    @property = Property.find(params[:id])
    current_characteristic = params[:step]
    
    if @property.update(step_params)
      next_characteristic = next_characteristic(current_characteristic)
      
      if next_characteristic
        redirect_to edit_step_property_path(@property, step: next_characteristic)
      else
        @property.calculate_total_score
        redirect_to @property, notice: 'Property was successfully updated.'
      end
    else
      @characteristic = current_characteristic
      @max_score = Property::CHARACTERISTICS[@characteristic.to_sym]
      render 'edit_step'
    end
  end

  # PATCH/PUT /properties/1 or /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: "Property was successfully updated." }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1 or /properties/1.json
  def destroy
    @property.destroy!

    respond_to do |format|
      format.html { redirect_to properties_path, status: :see_other, notice: "Property was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    def basic_params
      params.require(:property).permit(:title, :description, :price, :address, :bedrooms, :bathrooms, :square_feet)
    end
  
    def step_params
      params.require(:property).permit(params[:step])
    end
  
    def next_characteristic(current)
      chars = Property::CHARACTERISTICS.keys
      current_index = chars.index(current.to_sym)
      chars[current_index + 1]
    end
end
