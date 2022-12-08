class Weapon < ApplicationRecord
  validates :user_view_damage, :min_damage, :max_damage, :type_damage, presence: true
  belongs_to :world_inventory
end