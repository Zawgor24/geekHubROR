class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :type
      t.string :name
      t.string :color
      t.string :animal_groupe

      t.timestamps
    end
  end
end
