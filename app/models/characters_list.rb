class CharactersList < ApplicationRecord
  validates :character_name, :background, :race, :alignment, :exp, :inspiration, :armor_class, :initiative,
            :speed, :max_hp, :current_hp, :temporary_hp, :money, presence: true
  
  validates :exp, :armor_class, :initiative,
            :speed, :max_hp, :current_hp, :temporary_hp, :money,
            :numericality => { :greater_than_or_equal_to => 0 }
  # validates :inspiration, inclusion: { in: (0..1) }

  belongs_to :player
  has_many :spells
  has_one :room
  has_one :character_saving_throw
  has_one :character_perks
  has_one :character_characteristics
  has_many :character_inventories

end