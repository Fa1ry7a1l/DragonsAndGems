class CharacterPerks < ApplicationRecord
  validates :acrobatics, :animal_handling, :arcana, :athletics, :deception,
            :history, :insight, :intimidation, :investigation, :medicine,
            :nature, :perception, :performance, :persuasion, :religion,
            :sleight_of_hand, :stealth, :survival, presence: true
  validates :acrobatics, :animal_handling, :arcana, :athletics, :deception,
            :history, :insight, :intimidation, :investigation, :medicine,
            :nature, :perception, :performance, :persuasion, :religion,
            :sleight_of_hand, :stealth, :survival, inclusion: { in: (0..2) }
  belongs_to :characters_list, foreign_key: "character_id"
end