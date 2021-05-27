class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :points
      t.text :content
      t.time :time
      t.references :cause, null: false, foreign_key: true

      t.timestamps
    end
  end
end
