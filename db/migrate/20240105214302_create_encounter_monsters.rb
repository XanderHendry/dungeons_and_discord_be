class CreateEncounterMonsters < ActiveRecord::Migration[7.1]
  def change
    create_table :encounter_monsters do |t|
      t.references :encounter, null: false, foreign_key: true
      t.string :monster

      t.timestamps
    end
  end
end
