class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :games
      t.integer :victory

      t.timestamps
    end
  end
end
