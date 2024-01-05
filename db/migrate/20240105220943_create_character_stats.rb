class CreateCharacterStats < ActiveRecord::Migration[7.1]
  def change
    create_table :character_stats do |t|
      t.references :character, null: false, foreign_key: true
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha
      t.integer :armor_class
      t.integer :max_hit_point
      t.integer :current_hit_points
      t.integer :speed

      t.timestamps
    end
  end
end
