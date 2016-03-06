class CapturedImage < ActiveRecord::Base
  belongs_to :prototype
  mount_uploader :thumbnail, CapturedImageUploader
  enum status: { main: "0", sub: "1"}
end
