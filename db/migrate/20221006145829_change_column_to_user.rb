class ChangeColumnToUser < ActiveRecord::Migration[6.1]
  def change
    rename_column :caffes, :image, :images
  end
end
