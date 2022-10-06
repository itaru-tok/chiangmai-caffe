class ChangeDataImageToCaffe < ActiveRecord::Migration[6.1]
  def change
    change_column :caffes, :images, :json
  end
end
