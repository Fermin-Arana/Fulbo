class Booking < ApplicationRecord
  has_many :booking_courts
  has_many :courts, through: :booking_courts
  belongs_to :person
  belongs_to :payment_method, optional: true
end
