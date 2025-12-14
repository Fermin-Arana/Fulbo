class AddUserToComments < ActiveRecord::Migration[8.1]
  def change
    add_reference :comments, :user, null: false, foreign_key: { to_table: :people }
    add_reference :comments, :court, null: false, foreign_key: true
  end
end
