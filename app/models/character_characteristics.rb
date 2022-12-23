class CharacterCharacteristics < ApplicationRecord
  validates :proficiency_bonus, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, presence: true
  validates :proficiency_bonus, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma,
            :numericality => { :greater_than_or_equal_to => 0 }
  belongs_to :characters_list, foreign_key: "character_id"
end