class CreateGameCharacter < ActiveRecord::Migration[7.1]
  def change
    create_table :game_characters do |t|
      t.references :character, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
