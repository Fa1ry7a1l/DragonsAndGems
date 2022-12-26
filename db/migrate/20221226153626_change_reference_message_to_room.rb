class ChangeReferenceMessageToRoom < ActiveRecord::Migration[7.0]
  def change
    remove_reference :messages, :rooms
    add_reference :messages, :room
  end
end
