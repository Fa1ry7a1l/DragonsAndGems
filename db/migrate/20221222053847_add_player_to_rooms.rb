class AddPlayerToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :player_1, :integer, foreign_key:{to_table: :players}
    add_column :rooms, :player_2, :integer, foreign_key:{to_table: :players}
    add_column :rooms, :player_3, :integer, foreign_key:{to_table: :players}
    add_column :rooms, :player_4, :integer, foreign_key:{to_table: :players}
    add_column :rooms, :player_5, :integer, foreign_key:{to_table: :players}

  end
end
