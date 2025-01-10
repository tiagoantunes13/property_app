class AddSomeFieldsToProperty < ActiveRecord::Migration[7.2]
  def change
    add_column :properties, :location, :integer
    add_column :properties, :interior_quality, :integer
    add_column :properties, :materials, :integer
    add_column :properties, :air_conditioning, :integer
    add_column :properties, :heating, :integer
    add_column :properties, :top_floor, :integer
    add_column :properties, :duplex, :integer
    add_column :properties, :area, :integer
    add_column :properties, :common_areas, :integer
    add_column :properties, :year, :integer
    add_column :properties, :parking, :integer
    add_column :properties, :garage, :integer
    add_column :properties, :outdoor_areas, :integer
    add_column :properties, :condominium, :integer
    add_column :properties, :noise, :integer
    add_column :properties, :energy_efficiency, :integer
    add_column :properties, :view, :integer
    add_column :properties, :modern_exterior, :integer
    add_column :properties, :modern_interior, :integer
    add_column :properties, :size, :integer
    add_column :properties, :balconies, :integer
    add_column :properties, :units_in_building, :integer
    add_column :properties, :floor_plan, :integer
    add_column :properties, :bedroom_layout, :integer
    add_column :properties, :new_construction, :integer
    add_column :properties, :central_vacuum, :integer
    add_column :properties, :ethernet, :integer
    add_column :properties, :modern_electrical, :integer
    add_column :properties, :heated_towel_rails, :integer
    add_column :properties, :master_bedroom, :integer
    add_column :properties, :kitchen_island, :integer
    add_column :properties, :exterior_finish, :integer
    add_column :properties, :humidity, :integer
    add_column :properties, :home_automation, :integer
    add_column :properties, :built_in_appliances, :integer
    add_column :properties, :led_lighting, :integer
    add_column :properties, :curtain_rails, :integer
    add_column :properties, :surveillance, :integer
    add_column :properties, :security_door, :integer
    add_column :properties, :electric_blinds, :integer
    add_column :properties, :total_score, :decimal, precision: 5, scale: 2
  end
end
