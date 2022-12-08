class Armor < ApplicationRecord
  validates :class, :defend, presence: true
  has_one :world_inventory
end