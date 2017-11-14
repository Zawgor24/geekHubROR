class AddImageToFlights < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :image, :string
  end
end
