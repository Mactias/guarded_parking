class AddParkingSpaceToReservations < ActiveRecord::Migration[6.1]
  def change
    add_reference :reservations, :parking_space, null: false, foreign_key: true
  end
end
