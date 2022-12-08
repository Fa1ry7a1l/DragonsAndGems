class CreatePlayer < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :player_name

      t.string :password_digest
      t.string :email
      t.timestamps
    end
  end
end
