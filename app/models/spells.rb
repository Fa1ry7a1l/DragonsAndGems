class Spells < ApplicationRecord
  validates :name, :description, presence: true
  #todo ренейминг??
  belongs_to :characters_list
end