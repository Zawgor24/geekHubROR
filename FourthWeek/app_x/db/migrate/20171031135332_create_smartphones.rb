class CreateSmartphones < ActiveRecord::Migration[5.1]
  def change
    create_table :smartphones do |t|
      t.string :model
      t.integer :price
      t.string :characteristic

      t.timestamps
    end
  end
end
