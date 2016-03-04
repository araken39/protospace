class PrototypesController < ApplicationController
  def index
  end
  def new
    @prototype = Prototype.new(create_params)
     3.times { @prototype.captured_images.build }
  end
end
