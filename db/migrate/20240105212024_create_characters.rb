class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.string :name
      t.string :char_class
      t.string :subclass
      t.integer :level
      t.string :race
      t.string :background
      t.string :alignment
      t.integer :experience_points

      t.timestamps
    end
  end
end
