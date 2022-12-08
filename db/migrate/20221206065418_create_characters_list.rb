class CreateCharactersList < ActiveRecord::Migration[7.0]
  def change
    create_table :characters_lists  do |t|
      t.references :player , null: false, foreign_key:{to_table: :players}
      t.string :character_name, null: false
      t.string :background, null: false
      t.string :race, null: false
      t.string :alignment, null: false
      t.integer :exp, null: false
      t.boolean :inspiration, null: false
      t.integer :armor_class, null: false
      t.integer :initiative, null: false
      t.integer :speed, null: false
      t.integer :max_hp, null: false
      t.integer :current_hp, null: false
      t.integer :temporary_hp, null: false
      t.integer :money, null: false

      t.timestamps
    end
  end
end
