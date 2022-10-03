class Like < ApplicationRecord
  belongs_to :user
  belongs_to :caffe, counter_cache: :likes_count
  validates :user_id, uniqueness: {
  scope: :caffe_id,
  message: :duplicated
}
end
