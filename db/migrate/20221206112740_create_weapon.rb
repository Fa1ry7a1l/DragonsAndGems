class CreateWeapon < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.string :user_view_damage, null: false
      t.integer :min_damage, null: false
      t.integer :max_damage, null: false
      t.string :type_damage, null: false

      t.timestamps
    end
  end
end
