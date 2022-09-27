class AddUserIdToCaffes < ActiveRecord::Migration[6.1]
  def change
    add_column :caffes, :user_id, :int
  end
end
