class AddAsocToTickets < ActiveRecord::Migration[5.1]
  def change
    add_reference :tickets, :flight, foreign_key: true
  end
end
