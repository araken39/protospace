
module PrototypesHelper

  def set_main_thumnail(prototype)
    prototype.captured_images.main.first.thumbnail
  end
end
