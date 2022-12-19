class CreateCharacterSavingThrows < ActiveRecord::Migration[7.0]
  def change
    create_table :character_saving_throws do |t|
      t.references :character , null: false, foreign_key:{to_table: :characters_lists}

      t.boolean :strength, null: false
      t.boolean :dexterity, null: false
      t.boolean :constitution, null: false
      t.boolean :intelligence, null: false
      t.boolean :wisdom, null: false
      t.boolean :charisma, null: false
      t.timestamps
    end
  end
end
