class UsersController < ApplicationController

  def show

  end

  def user_params
  params.require(:user).permit(:name, :password, :avatar)
  end
end
