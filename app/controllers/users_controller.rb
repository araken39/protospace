class UsersController < ApplicationController

  def show
    @user_prototypes = current_user.prototypes
  end

end
