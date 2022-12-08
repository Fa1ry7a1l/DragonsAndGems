class CharactersList < ApplicationRecord
  validates :character_name, :background, :race, :alignment, :exp, :inspiration, :armor_class, :initiative,
            :speed, :max_hp, :current_hp, :temporary_hp, :money, presence: true

  belongs_to :player
  has_many :spells
  has_one :room
  has_one :character_saving_throws
  has_one :character_perks
  has_one :character_characteristics
  #todo has_many/has_one :character_inventories

end