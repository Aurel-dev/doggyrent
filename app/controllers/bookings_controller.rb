class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy ]

  def index 
    @bookings = Booking.all
  end

  def show
    redirect_to dogs_path
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path(@booking)
  end
    
 private

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date)
  end
end
