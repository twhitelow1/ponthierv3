class AddPhotoToSections < ActiveRecord::Migration[6.1]
  def change
    add_column :sections, :photo, :string
  end
end
