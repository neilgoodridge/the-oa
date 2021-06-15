class AddCauseToOrganisation < ActiveRecord::Migration[6.0]
  def change
    add_reference :organisations, :cause, null: false, foreign_key: true
  end
end
