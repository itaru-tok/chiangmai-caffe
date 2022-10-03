class AddAreaToCaffes < ActiveRecord::Migration[6.1]
  def change
    add_column :caffes, :area, :string
  end
end
