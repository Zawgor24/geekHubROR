class AddImageToPlanes < ActiveRecord::Migration[5.1]
  def change
    add_column :planes, :image, :string
  end
end
