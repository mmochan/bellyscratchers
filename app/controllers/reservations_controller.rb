class ReservationsController < ApplicationController


  def show
    @reservation = Reservation.first
  end
end
