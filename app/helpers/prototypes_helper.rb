
module PrototypesHelper
  def set_main_thumnail(prototype)
    prototype.captured_images.find_by(status: 0).thumbnail
  end
  def set_sub_thumnail(prototype)
    prototype.captured_images.find_by(status: 1).thumbnail
  end
end
