class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :second_name
      t.integer :rating
      t.integer :age
      t.string :country
      t.belongs_to :user

      t.timestamps
    end
  end
end
