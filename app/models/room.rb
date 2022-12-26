class Room < ApplicationRecord
  validates :room_name, presence: true
  has_many :players
  has_many :messages
end