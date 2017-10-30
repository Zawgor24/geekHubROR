class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.string :color
      t.integer :amount

      t.timestamps
    end
  end
end
