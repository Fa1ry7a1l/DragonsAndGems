class MonsterSkill < ApplicationRecord
  validates :name, :description, min_value, max_value, presence: true
  #todo integer number for values
  belongs_to :world_monsters
end