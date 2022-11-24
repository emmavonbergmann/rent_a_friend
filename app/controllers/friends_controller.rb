class FriendsController < ApplicationController




  def index
    if params[:query].present?
      @friends = Friend.global_search(params[:query])
    else
      @friends = Friend.all
    end
    # The `geocoded` scope filters only flats with coordinates
    #  @markers = @friends.geocoded.map do |friend|
       # {
        #  lat: friend.latitude,
       #   lng: friend.longitude
      #  }
     # end
  end

  def show
    @friend = Friend.find(params[:id])
    @user = User.find(@friend.user_id)
    @booking = Booking.new
  end

  def new
    if !current_user.friend.nil?
      @friend = current_user.friend

    else
      @friend = Friend.new
    end
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user = current_user
    if @friend.save
      redirect_to friend_path(@friend)
    else
      render :new
    end
  end

  def update
    @friend = current_user.friends.last
    if @friend.update(friend_params)
      redirect_to profile_path(current_user)
    else
      render :new
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:hobbies, :price, :zodiac_sign, :pronouns, :about_me, :availability)
  end
end
