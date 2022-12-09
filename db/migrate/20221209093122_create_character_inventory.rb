class CreateCharacterInventory < ActiveRecord::Migration[7.0]
  def change
    create_table :character_inventories do |t|
      t.references :item, null: false, foreign_key: { to_table: :world_inventory }
      t.references :character, null: false, foreign_key: { to_table: :characters_lists }
      t.integer :count, null: false
      t.timestamps
    end
  end
end
