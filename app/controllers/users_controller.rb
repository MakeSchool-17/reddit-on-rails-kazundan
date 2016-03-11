class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    user.save
  end

  def update
    user = User.find(params[:id])
    user.email = user_params[:email]
    # user.email = user_params["email"]
    user.save
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"

  end

private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
