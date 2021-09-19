class CreatePickedServices < ActiveRecord::Migration[6.1]
  def change
    create_table :picked_services do |t|
      t.integer :offered_service_id
      t.integer :quote_id

      t.timestamps
    end
  end
end
