class CreatePlayer < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.primary_key :player_id
      t.string :player_name

      t.timestamps
    end
  end
end
