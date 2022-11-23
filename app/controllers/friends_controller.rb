class FriendsController < ApplicationController
  def index
    @friends = Friend.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @friends.geocoded.map do |friend|
      {
        lat: friend.latitude,
        lng: friend.longitude
      }
    end
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    if @friend.save
      redirect_to friend_path(@friend)
    else
      render :new
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:hobbies, :price, :zodiac_sign, :pronouns, :about_me, :availabitlity)
  end
end
