class CreateProperties < ActiveRecord::Migration[7.2]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :address
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :square_feet

      t.timestamps
    end
  end
end
