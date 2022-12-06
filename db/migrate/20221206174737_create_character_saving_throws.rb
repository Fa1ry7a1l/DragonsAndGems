class CreateCharacterSavingThrows < ActiveRecord::Migration[7.0]
  def change
    create_table :character_saving_throws do |t|
      t.references :character , null: false, foreign_key:{to_table: :characters_lists}

      t.decimal :strength, null: false
      t.decimal :dexterity, null: false
      t.decimal :constitution, null: false
      t.decimal :intelligence, null: false
      t.decimal :wisdom, null: false
      t.decimal :charisma, null: false
      t.timestamps
    end
  end
end
