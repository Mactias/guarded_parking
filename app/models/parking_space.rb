class ParkingSpace < ApplicationRecord
  has_many :reservations
end
