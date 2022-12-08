class CharacterInventory < ApplicationRecord
  validates :user_view_damage, :min_damage, :max_damage, :type_damage, presence: true
  validates :user_view_damage, :min_damage, :max_damage, :numericality => { :greater_than_or_equal_to => 0 }
  belongs_to :world_inventory
end