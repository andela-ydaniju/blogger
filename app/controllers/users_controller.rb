class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def signin
  end
end
