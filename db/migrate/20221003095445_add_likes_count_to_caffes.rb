class AddLikesCountToCaffes < ActiveRecord::Migration[6.1]
  def change
    add_column :caffes, :likes_count, :integer, default: 0
  end
end
