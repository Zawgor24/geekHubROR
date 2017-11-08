class CreateHomeworks < ActiveRecord::Migration[5.1]
  def change
    create_table :homeworks do |t|
      t.string :name
      t.text :task
      t.string :deadline
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end
  end
end
