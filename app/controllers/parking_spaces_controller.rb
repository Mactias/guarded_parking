class ParkingSpacesController < ApplicationController
  def index
    @parkings = ParkingSpace.all
  end

  def show
    @parking = ParkingSpace.find(params[:id])
    @reservation = @parking.reservations.build
    @ress_ordered = @parking.reservations.order(:start_date)
  end
end
