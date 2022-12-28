class CharacterSavingThrow < ApplicationRecord
  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, presence: true

  belongs_to :characters_list, foreign_key: "character_id"
end