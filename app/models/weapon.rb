class Weapon < ApplicationRecord
  validates :user_view_damage, :min_damage, :max_damage, :type_damage, presence: true
  has_one :world_inventory
end