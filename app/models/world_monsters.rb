class WorldMonsters < ApplicationRecord
  validates :name, :start_hp, :description, presence: true
  #todo integer number for hp
end