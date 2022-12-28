class WorldInventory < ApplicationRecord
  validates :name, :description, presence: true
end