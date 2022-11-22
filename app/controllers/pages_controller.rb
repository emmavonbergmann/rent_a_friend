class PagesController < ApplicationController

  def home
  end
  def show
    @user = User.find(params[:id])
    @bookings = Booking.where(user: current_user)
  end
end
