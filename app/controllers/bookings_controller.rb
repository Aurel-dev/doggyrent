class BookingsController < ApplicationController
    before_action :find_booking, only: [:show, :edit, :update, :destroy ]

  def index 
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.after_save
      redirect_to bookings_path(@booking)
    else
      render :new
  end

  def destroy
    @booking.destroy
    redirect _to bookings_path(@booking)
  end
    
 private

  def find_booking
    @booking = Booking.find(params[id:])
  end

  def booking_params
    params.require(:booking).permit(:name, :photo)
  end

end
