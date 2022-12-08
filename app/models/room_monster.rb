class RoomMonster < ApplicationRecord
  validates :current_hp, presence: true
  validates :current_hp, :numericality => { :greater_than_or_equal_to => 0 }
  has_and_belongs_to_many :rooms
  has_one :world_monster
end