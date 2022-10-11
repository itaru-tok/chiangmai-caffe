class ChangeDataImageToCaffe < ActiveRecord::Migration[6.1]
  def change
    change_column :caffes, :images, :json, using: 'images::json'
  end
end
