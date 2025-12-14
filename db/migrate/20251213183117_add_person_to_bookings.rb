class AddPersonToBookings < ActiveRecord::Migration[8.1]
  def change
    add_reference :bookings, :person, null: false, foreign_key: true
  end
end
