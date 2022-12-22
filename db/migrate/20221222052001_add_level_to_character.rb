class AddLevelToCharacter < ActiveRecord::Migration[7.0]
  def change
    add_column :characters_lists, :lvl, :integer, null: false
  end
end
