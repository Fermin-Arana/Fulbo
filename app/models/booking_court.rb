class BookingCourt < ApplicationRecord
  belongs_to :booking
  belongs_to :court
end
