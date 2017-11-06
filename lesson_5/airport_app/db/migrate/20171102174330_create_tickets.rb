class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :place
      t.integer :place_type
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
