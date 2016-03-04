class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    user.save
  end


private
  def user_params
    params.require(:user).permit(:email)
  end
end
