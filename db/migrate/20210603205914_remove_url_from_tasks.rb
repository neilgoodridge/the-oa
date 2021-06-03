class RemoveUrlFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :url, :text
  end
end
