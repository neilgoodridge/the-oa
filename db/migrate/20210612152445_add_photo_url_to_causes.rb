class AddPhotoUrlToCauses < ActiveRecord::Migration[6.0]
  def change
    add_column :causes, :photo_url, :string
  end
end
