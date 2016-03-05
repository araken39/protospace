class PrototypesController < ApplicationController
  def index
  end
  def new
    @prototype = Prototype.new
    3.times { @prototype.captured_images.build }
  end
  private
  def create_params
    params.require(:prototype).permit(captured_images_attributes: [:thumbnail])
  end
end
