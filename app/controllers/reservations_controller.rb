class ReservationsController < ApplicationController
  def create
    @parking = ParkingSpace.find(params[:parking_space_id])
    @reservation = @parking.reservations.new(reservation_params)
    # @price = 1002
    if params[:preview] && @reservation.valid?
      @price = (@reservation.end_date - @reservation.start_date) + 1
      @price = @price.to_i * @parking.price
      render 'preview'
    elsif @reservation.save
      redirect_to root_path
    else
      render 'parking_spaces/show'
    end
  end

  def preview
  end

  private
  def reservation_params
    params.require(:reservation).permit(:name, :license_plate, :pesel, :start_date, :end_date)
  end
end
