class CreateArmor < ActiveRecord::Migration[7.0]
  def change
    create_table :armors do |t|
      t.string :class, null: false
      t.decimal :defend, null: false

      t.timestamps
    end
  end
end
