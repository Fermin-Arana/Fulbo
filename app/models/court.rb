class Court < ApplicationRecord
  belongs_to :owner, class_name: "Owner"
  belongs_to :location
  has_many :booking_courts
  has_many :bookings, through: :booking_courts
  has_many :comments, dependent: :destroy
end
