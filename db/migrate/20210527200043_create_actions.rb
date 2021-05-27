class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.boolean :completed, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
