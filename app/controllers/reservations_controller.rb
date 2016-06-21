class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    
  end

  private

  def reservation_params
    params.require(:reservation).permit(:item_id, :owner_id, :due_date, :notes)
  end
end
