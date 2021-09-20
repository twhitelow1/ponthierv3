class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    change_table :offered_services do |t|
      t.rename :img_url, :image
    end
  end
end
