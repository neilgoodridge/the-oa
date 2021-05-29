class AddTaskToActions < ActiveRecord::Migration[6.0]
  def change
    add_reference :actions, :task, null: false, foreign_key: true
  end
end
