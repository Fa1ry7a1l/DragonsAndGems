class CharacterPerks < ApplicationRecord
  validates :acrobatics, :animal_handling, :arcana, :athletics, :deception,
            :history, :insight, :intimidation, :investigation, :medicine,
            :nature, :perception, :performance, :persuasion, :religion,
            :sleight_of_hand, :stealth, :survival, presence: true
  belongs_to :characters_list
end