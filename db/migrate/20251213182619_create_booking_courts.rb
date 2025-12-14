class CreateBookingCourts < ActiveRecord::Migration[8.1]
  def change
    create_table :booking_courts do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :court, null: false, foreign_key: true

      t.timestamps
    end
  end
end
