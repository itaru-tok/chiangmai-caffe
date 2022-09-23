class Caffe < ApplicationRecord
  validates :name, presence: true, length: {minimum:3, maximum:50}
  validates :comment, presence: true, length: {minimum:3, maximum:300}
end
