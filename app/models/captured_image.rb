class CapturedImage < ActiveRecord::Base
  belongs_to :prototype
  mount_uploader :thumbnail, CapturedImageUploader
  enum status: %i(main sub)
end
