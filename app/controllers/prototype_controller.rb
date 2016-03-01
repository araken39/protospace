class PrototypeController < ApplicationController
  before_action :redirect , except: :index


  def redirect
    redirect_to action: :index unless user_signed_in?
  end
end
