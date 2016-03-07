class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
    @prototype.captured_images.build
  end

  def create
    Prototype.create(create_params)
    redirect_to action: :index
  end


  private
  def create_params
    params.require(:prototype).permit(
        :title,
        :catch_copy,
        :concept,
        captured_images_attributes: [:thumbnail, :status]
      ).merge(user_id: current_user.id)
  end

end
