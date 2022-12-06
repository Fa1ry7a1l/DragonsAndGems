class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.references :dungeon_master, null: false, foreign_key: { to_table: :players }

      t.string :room_name, null: false
      t.references :character_1, foreign_key: { to_table: :characters_lists }
      t.references :character_2, foreign_key: { to_table: :characters_lists }
      t.references :character_3, foreign_key: { to_table: :characters_lists }
      t.references :character_4, foreign_key: { to_table: :characters_lists }
      t.references :character_5, foreign_key: { to_table: :characters_lists }

      t.timestamps
    end
  end
end
