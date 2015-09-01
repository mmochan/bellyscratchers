class ReservationsController < ApplicationController

  before_action :set_reservation, only: [:show, :edit, :update, :destroy]


  def index
    @reservations = Reservation.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @foo = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foo_params
      params[:reservation]
    end  
end
