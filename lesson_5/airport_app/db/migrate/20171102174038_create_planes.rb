class CreatePlanes < ActiveRecord::Migration[5.1]
  def change
    create_table :planes do |t|
      t.integer :places
      t.string :model

      t.timestamps
    end
  end
end
