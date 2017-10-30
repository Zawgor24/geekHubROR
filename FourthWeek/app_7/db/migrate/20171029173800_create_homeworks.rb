class CreateHomeworks < ActiveRecord::Migration[5.1]
  def change
    create_table :homeworks do |t|
      t.string :student
      t.integer :mark
      t.string :subject
      t.text :mistake

      t.timestamps
    end
  end
end
