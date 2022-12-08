class WorldMonster < ApplicationRecord
  validates :name, :start_hp, :description, presence: true
  validates :start_hp, :numericality => { :greater_than_or_equal_to => 0 }
end