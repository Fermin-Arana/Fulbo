class CreateBookings < ActiveRecord::Migration[8.1]
  def change
    create_table :bookings do |t|
      t.date :date_booking
      t.time :time_booking

      t.timestamps
    end
  end
end
