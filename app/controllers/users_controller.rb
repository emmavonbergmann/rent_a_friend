class UsersController < ApplicationController
  def index
    @friends = Friends.all
  end
end
