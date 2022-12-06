class CreateWorldInventory < ActiveRecord::Migration[7.0]
  def change
    create_table :world_inventory do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.references :weapon ,  foreign_key:{to_table: :weapons}
      t.references :armor ,  foreign_key:{to_table: :armors}


      t.timestamps
    end
  end
end
