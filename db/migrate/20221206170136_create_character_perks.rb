class CreateCharacterPerks < ActiveRecord::Migration[7.0]
  def change
    create_table :character_perks do |t|
      t.references :character , null: false, foreign_key:{to_table: :characters_lists}

      t.boolean :acrobatics, null: false
      t.boolean :animal_handling, null: false
      t.boolean :arcana, null: false
      t.boolean :athletics, null: false
      t.boolean :deception, null: false
      t.boolean :history, null: false
      t.boolean :insight, null: false
      t.boolean :intimidation, null: false
      t.boolean :investigation, null: false
      t.boolean :medicine, null: false
      t.boolean :nature, null: false
      t.boolean :perception, null: false
      t.boolean :performance, null: false
      t.boolean :persuasion, null: false
      t.boolean :religion, null: false
      t.boolean :sleight_of_hand, null: false
      t.boolean :stealth, null: false
      t.boolean :survival, null: false

      t.timestamps
    end
  end
end
