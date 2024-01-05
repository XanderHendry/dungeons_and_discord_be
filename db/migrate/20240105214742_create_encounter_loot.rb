class CreateEncounterLoot < ActiveRecord::Migration[7.1]
  def change
    create_table :encounter_loots do |t|
      t.references :encounter, null: false, foreign_key: true
      t.string :item_name

      t.timestamps
    end
  end
end
