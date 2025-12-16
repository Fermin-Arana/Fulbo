class AddOwnerToCourts < ActiveRecord::Migration[8.1]
  def change
    add_reference :courts, :owner, null: false, foreign_key: { to_table: :people }
  end
end
