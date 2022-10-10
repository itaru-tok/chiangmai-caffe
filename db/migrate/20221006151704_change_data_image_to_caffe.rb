class ChangeDataImageToCaffe < ActiveRecord::Migration[6.1]
  def change
    change_column :caffes, :images, "json USING CAST(images AS json)"
  end
end
