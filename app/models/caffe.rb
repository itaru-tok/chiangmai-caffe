class Caffe < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  validates :name, presence: true, length: {minimum:3, maximum:50}
  validates :comment, presence: true, length: {minimum:3, maximum:300}
  validates :area, presence: true
  mount_uploader :image, ImageUploader

  def liked_by?(user)
    likes.any? { |like| like.user_id == user.id }
  end
end
