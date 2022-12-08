class WorldInventory < ApplicationRecord
  validates :name, :description, presence: true
  validates :weapon, presence: true, unless: :armor
  validates :armor, presence: true, unless: :weapon
end