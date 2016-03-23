module ApplicationHelper
  def set_main_thumbnail(prototype)
    prototype.captured_images.main.first.thumbnail
  end
end
