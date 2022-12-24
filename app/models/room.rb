class Room < ApplicationRecord
  validates :room_name, presence: true
  has_one :player
  has_many :messages
end