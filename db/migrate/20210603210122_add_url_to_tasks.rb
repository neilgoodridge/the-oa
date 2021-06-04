class AddUrlToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :url, :string
  end
end
