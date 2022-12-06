class CreateCharactersList < ActiveRecord::Migration[7.0]
  def change
    create_table :characters_lists, :primary_key => 'character_id'  do |t|
      t.references :players, null: false , name: :player_id
      t.string :character_name, null: false
      t.string :background, null: false
      t.string :race, null: false
      t.string :alignment, null: false
      t.decimal :exp, null: false
      t.boolean :inspiration, null: false
      t.decimal :armor_class, null: false
      t.decimal :initiative, null: false
      t.decimal :speed, null: false
      t.decimal :max_hp, null: false
      t.decimal :current_hp, null: false
      t.decimal :temporary_hp, null: false
      t.decimal :money, null: false

      t.timestamps
    end
  end
end
