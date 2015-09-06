class ReservationsController < ApplicationController

  before_action :set_reservation, only: [:show, :edit, :update, :destroy]


  def index
    @reservations = current_user.reservations
  end

  def show
  end

  def new
    @reservation = current_user.reservations.build
  end

  def edit
  end  

  def create
    @reservation = current_user.reservations.build(reservation_params)
    @reservation.dog_ids = params[:reservation][:dog_ids]

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to reservations_path, notice: 'reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end  

  def update
    respond_to do |format|
      @reservation.dog_ids = params[:reservation][:dog_ids]
      if @reservation.update(reservation_params)
        format.html { redirect_to reservations_path, notice: 'reservation was successfully updated.' }
        format.json { render :index, status: :ok}
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params[:reservation][:dog_ids].reject!(&:empty?)
      params.require(:reservation).permit(:name, :mobile, :start_date, :end_date)
    end  
end
