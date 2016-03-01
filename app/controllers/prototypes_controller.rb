class PrototypesController < ApplicationController
  before_action :redirect , except: :index

  def index
  end

  def redirect
    redirect_to new_user_session_path unless user_signed_in?
  end
end
