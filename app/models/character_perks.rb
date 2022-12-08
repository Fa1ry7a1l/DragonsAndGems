class CharacterPerks < ApplicationRecord
  validates :acrobatics, :animal_handling, :arcana, :athletics, :deception,
            :history, :insight, :intimidation, :investigation, :medicine,
            :nature, :perception, :performance, :persuasion, :religion,
            :sleight_of_hand, :stealth, :survival, presence: true
  validates :acrobatics, :animal_handling, :arcana, :athletics, :deception,
            :history, :insight, :intimidation, :investigation, :medicine,
            :nature, :perception, :performance, :persuasion, :religion,
            :sleight_of_hand, :stealth, :survival, :numericality => { :greater_than_or_equal_to => 0 }
  belongs_to :characters_list
end