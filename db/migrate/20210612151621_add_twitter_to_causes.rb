class AddTwitterToCauses < ActiveRecord::Migration[6.0]
  def change
    add_column :causes, :twitter, :string
  end
end
