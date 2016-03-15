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
    Prototype.create(create_params)
    redirect
  end

  def show

  end

  def edit
    @prototype.captured_images.build
  end

  def destroy
    if @prototype.user_id == current_user.id
      @prototype.destroy
    end
    redirect
  end

  def update
    if @prototype.user_id == current_user.id
      update_params
      @prototype.update(update_params)
    end
    redirect
  end


  private
  def create_params
    params.require(:prototype).permit(
        :title,
        :catch_copy,
        :concept,
        captured_images_attributes: [
        :thumbnail,
        :status
        ]
      ).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      captured_images_attributes: [
      :thumbnail,
      :status,
      :id
      ]
    )
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def redirect
    redirect_to action: :index
  end
end
