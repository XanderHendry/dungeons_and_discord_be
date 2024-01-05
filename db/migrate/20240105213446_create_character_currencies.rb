class CreateCharacterCurrencies < ActiveRecord::Migration[7.1]
  def change
    create_table :character_currencies do |t|
      t.references :character, null: false, foreign_key: true
      t.integer :copper
      t.integer :silver
      t.integer :gold
      t.integer :platinum
      t.integer :electrum

      t.timestamps
    end
  end
end
