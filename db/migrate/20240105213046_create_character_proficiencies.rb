class CreateCharacterProficiencies < ActiveRecord::Migration[7.1]
  def change
    create_table :character_proficiencies do |t|
      t.references :character, null: false, foreign_key: true
      t.string :proficiency_name

      t.timestamps
    end
  end
end
