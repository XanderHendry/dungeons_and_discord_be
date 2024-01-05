class CreateEncounters < ActiveRecord::Migration[7.1]
  def change
    create_table :encounters do |t|
      t.references :game, null: false, foreign_key: true
      t.integer :copper
      t.integer :silver
      t.integer :gold
      t.integer :platinum
      t.integer :electrum

      t.timestamps
    end
  end
end
