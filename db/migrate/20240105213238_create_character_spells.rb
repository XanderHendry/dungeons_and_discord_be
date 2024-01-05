class CreateCharacterSpells < ActiveRecord::Migration[7.1]
  def change
    create_table :character_spells do |t|
      t.references :character, null: false, foreign_key: true
      t.string :spell_name

      t.timestamps
    end
  end
end
