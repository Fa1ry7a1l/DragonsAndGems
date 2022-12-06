class CreateMonsterSkill < ActiveRecord::Migration[7.0]
  def change
    create_table :monster_skills do |t|
      t.string :name, null: false
      t.string :description, null: false

      t.references :owner , null: false, foreign_key:{to_table: :world_monsters}

      t.decimal :min_value, null:false
      t.decimal :max_value, null:false

      t.timestamps
    end
  end
end
