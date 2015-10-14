class UsersController < ApplicationController

  def show

  end

  def user_params
    require(:user).permit(:email, :password)
  end
end
