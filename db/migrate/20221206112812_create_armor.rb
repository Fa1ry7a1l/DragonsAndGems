class CreateArmor < ActiveRecord::Migration[7.0]
  def change
    create_table :armors, :primary_key => :armor_id do |t|
      t.string :class, null: false
      t.decimal :defend, null: false

      t.timestamps
    end
  end
end
