
module PrototypesHelper
  def set_main_thumnail(prototype)
    prototype.captured_images.find_by(status: CapturedImage.statuses[:main]).thumbnail
  end
  def set_sub_thumnail(prototype)
    prototype.captured_images.find_by(status: CapturedImage.statuses[:sub]).thumbnail
  end
end
