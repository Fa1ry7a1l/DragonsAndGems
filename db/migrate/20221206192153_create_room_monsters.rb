class CreateRoomMonsters < ActiveRecord::Migration[7.0]
  def change
    create_table :room_monsters do |t|

      t.references :room , null: false, foreign_key:{to_table: :rooms}
      t.references :world_monster , null: false, foreign_key:{to_table: :world_monsters}
      t.integer :current_hp, null: false

      t.timestamps
    end
  end
end
