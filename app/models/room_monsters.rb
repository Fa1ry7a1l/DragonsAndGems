class RoomMonsters < ApplicationRecord
  validates :current_hp, presence: true
  #todo integer number for hp
  has_and_belongs_to_many :rooms
  has_one :world_monsters
end