class ResetAllCaffeCacheCounters < ActiveRecord::Migration[6.1]
  def up
    Caffe.find_each { |caffe| Caffe.reset_counters(caffe.id, :likes_count) }
  end

  def down
  end
end
