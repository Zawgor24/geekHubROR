class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :name
      t.datetime :departure_at
      t.datetime :arrival_at
      t.belongs_to :city, foreign_key: true
      t.belongs_to :plane, foreign_key: true

      t.timestamps
    end
  end
end
