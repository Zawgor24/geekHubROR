class CreateSportsmen < ActiveRecord::Migration[5.1]
  def change
    create_table :sportsmen do |t|
      t.string :name
      t.string :sport
      t.integer :rank

      t.timestamps
    end
  end
end
