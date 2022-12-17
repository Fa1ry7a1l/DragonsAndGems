class MonsterSkill < ApplicationRecord
  validates :name, :description, :min_value, :max_value, presence: true
  validates :min_value, :max_value, :numericality => { :greater_than_or_equal_to => 0 }
  belongs_to :world_monster
end