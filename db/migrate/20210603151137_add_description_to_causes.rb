class AddDescriptionToCauses < ActiveRecord::Migration[6.0]
  def change
    add_column :causes, :description, :text
  end
end
