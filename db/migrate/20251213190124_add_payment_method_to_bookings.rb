class AddPaymentMethodToBookings < ActiveRecord::Migration[8.1]
  def change
    add_reference :bookings, :payment_method, null: true, foreign_key: true
  end
end
