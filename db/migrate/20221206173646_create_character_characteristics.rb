class CreateCharacterCharacteristics < ActiveRecord::Migration[7.0]
  def change
    create_table :character_characteristics do |t|
      t.references :character , null: false, foreign_key:{to_table: :characters_lists}

      t.integer :proficiency_bonus, null: false
      t.integer :strength, null: false
      t.integer :dexterity, null: false
      t.integer :constitution, null: false
      t.integer :intelligence, null: false
      t.integer :wisdom, null: false
      t.integer :charisma, null: false

      t.timestamps
    end
  end
end
