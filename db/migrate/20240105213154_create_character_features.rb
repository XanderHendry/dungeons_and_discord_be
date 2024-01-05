class CreateCharacterFeatures < ActiveRecord::Migration[7.1]
  def change
    create_table :character_features do |t|
      t.references :character, null: false, foreign_key: true
      t.string :feature_name

      t.timestamps
    end
  end
end
