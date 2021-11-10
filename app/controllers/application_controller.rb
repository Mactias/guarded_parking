class ApplicationController < ActionController::Base
  def index
    @parking_spaces = ParkingSpace.all
  end
end
