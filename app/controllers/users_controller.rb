class UsersController < ApplicationController

  def show
    @prototypes = current_user.prototypes
  end

end
