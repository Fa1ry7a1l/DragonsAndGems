class CreateCharacterPerks < ActiveRecord::Migration[7.0]
  def change
    create_table :character_perks do |t|
      t.references :character , null: false, foreign_key:{to_table: :characters_lists}

      t.integer :acrobatics, null: false
      t.integer :animal_handling, null: false
      t.integer :arcana, null: false
      t.integer :athletics, null: false
      t.integer :deception, null: false
      t.integer :history, null: false
      t.integer :insight, null: false
      t.integer :intimidation, null: false
      t.integer :investigation, null: false
      t.integer :medicine, null: false
      t.integer :nature, null: false
      t.integer :perception, null: false
      t.integer :performance, null: false
      t.integer :persuasion, null: false
      t.integer :religion, null: false
      t.integer :sleight_of_hand, null: false
      t.integer :stealth, null: false
      t.integer :survival, null: false

      t.timestamps
    end
  end
end
