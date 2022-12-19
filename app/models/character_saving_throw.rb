class CharacterSavingThrow < ApplicationRecord
  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, presence: true
  validates :proficiency_bonus, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma,
            inclusion: { in: [ true, false ] }
  belongs_to :characters_list
end