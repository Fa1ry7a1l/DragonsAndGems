class CharacterCharacteristics < ApplicationRecord
  validates :proficiency_bonus, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, presence: true
  belongs_to :characters_list
end