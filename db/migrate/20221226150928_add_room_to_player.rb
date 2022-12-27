class AddRoomToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_reference :players, :room, foreign_key: {to_table: :rooms}
  end
end
