class CreateWares < ActiveRecord::Migration[5.1]
  def change
    create_table :wares do |t|
      t.string :type
      t.string :model
      t.integer :price
      t.string :name

      t.timestamps
    end
  end
end
