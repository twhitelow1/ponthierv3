class CreateOfferedServices < ActiveRecord::Migration[6.1]
  def change
    create_table :offered_services do |t|
      t.string :name
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
