class CharacterThrows < ApplicationRecord
  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, presence: true
  belongs_to :characters_list
end