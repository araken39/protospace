class PrototypesController < ApplicationController

  before_action :set_prototype ,only: [:show, :edit, :destroy, :update]
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
    @prototype.captured_images.build
  end

  def create
    Prototype.create(prototype_params)
    redirect_to action: :index
  end

  def show
    @likes = Like.where(prototype_id: params[:id])
    @like = @likes.where(user_id: current_user.id).first_or_initialize
  end

  def edit
    @prototype.captured_images.build
  end

  def destroy
    @prototype.destroy
    redirect_to action: :index
  end

  def update
    @prototype.update(prototype_params)
    redirect_to action: :index
  end

  private
  def prototype_params
    params.require(:prototype).permit(
        :title,
        :catch_copy,
        :concept,
        captured_images_attributes: [
        :thumbnail,
        :status,
        :id
        ]
      ).merge(user_id: current_user.id)
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
end
