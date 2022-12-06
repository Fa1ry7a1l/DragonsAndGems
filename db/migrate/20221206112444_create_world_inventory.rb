class CreateWorldInventory < ActiveRecord::Migration[7.0]
  def change
    create_table :world_inventory, :primary_key => :item_id do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.references :weapons, null: false , name: :weapon_id
      t.references :armors, null: false , name: :armor_id


      t.timestamps
    end
  end
end
