class ParkingSpacesController < ApplicationController
  def index
    @parkings = ParkingSpace.all
  end

  def show
    @parking = ParkingSpace.find(params[:id])
    @reservation = @parking.reservations.build
  end
end
