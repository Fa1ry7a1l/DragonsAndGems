class AddOwnerToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages,:owner, :integer, null: false
  end
end
