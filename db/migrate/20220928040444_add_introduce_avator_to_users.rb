class AddIntroduceAvatorToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :introduce, :string
    add_column :users, :avator, :string
  end
end
