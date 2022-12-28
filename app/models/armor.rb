class Armor < ApplicationRecord
  validates :class, :defend, presence: true
end