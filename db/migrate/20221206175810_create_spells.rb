class CreateSpells < ActiveRecord::Migration[7.0]
  def change
    create_table :spells do |t|
      t.references :character , null: false, foreign_key:{to_table: :characters_lists}

      t.string :name, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
