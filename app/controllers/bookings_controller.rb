class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to profile_path(current_user)
    else
      render :new
    end
  end

  def booking_params
    params.require(:booking).permit(:occurs_on, :user_id, :friend_id)
  end
end
