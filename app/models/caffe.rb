class Caffe < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: {minimum:3, maximum:50}
  validates :comment, presence: true, length: {minimum:3, maximum:300}
  mount_uploader :image, ImageUploader
end
