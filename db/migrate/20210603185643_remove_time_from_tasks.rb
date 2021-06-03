class RemoveTimeFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :time, :time
  end
end
