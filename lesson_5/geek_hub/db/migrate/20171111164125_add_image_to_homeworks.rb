class AddImageToHomeworks < ActiveRecord::Migration[5.1]
  def change
    add_column :homeworks, :image, :string
  end
end
