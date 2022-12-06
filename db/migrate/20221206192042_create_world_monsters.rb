class CreateWorldMonsters < ActiveRecord::Migration[7.0]
  def change
    create_table :world_monsters do |t|

      t.string :name, null: false
      t.string :description, null: false
      t.decimal :start_hp, null: false

      t.timestamps
    end
  end
end
