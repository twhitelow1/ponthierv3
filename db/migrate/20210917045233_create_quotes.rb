class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :status
      t.integer :price
      t.string :client_name
      t.string :email
      t.string :phone
      t.string :project_type
      t.string :floors
      t.integer :building_sqft
      t.boolean :garage
      t.string :roof_material
      t.string :pitch_of_roof
      t.string :gutter_sqft
      t.string :ext_material
      t.boolean :screen_removal
      t.string :door_material
      t.integer :flt_surface_sqft
      t.string :driveway_size
      t.string :comments
      t.boolean :roof_services
      t.boolean :gutter_cleaning
      t.boolean :building_wash
      t.boolean :flat_surfaces
      t.boolean :rust_removal
      t.boolean :driveway

      t.timestamps
    end
  end
end
