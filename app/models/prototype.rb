class Prototype < ActiveRecord::Base
  has_many :captured_images
  has_many :likes
  belongs_to :user
  accepts_nested_attributes_for :captured_images

  def like_user(user)
   likes.find_by(user_id: user.id)
  end
end
