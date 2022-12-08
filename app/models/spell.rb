class Spell < ApplicationRecord
  validates :name, :description, presence: true
  belongs_to :characters_list
end