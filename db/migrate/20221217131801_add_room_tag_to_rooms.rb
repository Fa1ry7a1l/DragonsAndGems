class AddRoomTagToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :tag, :integer, null: false
    add_index :rooms, :tag, unique: true
  end
end
