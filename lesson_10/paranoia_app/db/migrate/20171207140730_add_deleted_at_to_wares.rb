class AddDeletedAtToWares < ActiveRecord::Migration[5.1]
  def change
    add_column :wares, :deleted_at, :datetime
    add_index :wares, :deleted_at
  end
end
