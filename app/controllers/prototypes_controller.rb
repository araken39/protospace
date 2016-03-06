class PrototypesController < ApplicationController

  def index
  end

  def new
    @prototype = Prototype.new
    @prototype.captured_images.build
  end

  def create
    Prototype.create(create_params)
    redirect_to controller: :prototypes, action: :index
  end

  private
  def create_params

    params.require(:prototype).permit(
        :title,
        :catch_copy,
        :concept,
        captured_images_attributes: [:thumbnail, :status]
      )

  end

end
