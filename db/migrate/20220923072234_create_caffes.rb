class CreateCaffes < ActiveRecord::Migration[6.1]
  def change
    create_table :caffes do |t|
      t.string :name
      t.text :comment
      t.string :image

      t.timestamps
    end
  end
end
