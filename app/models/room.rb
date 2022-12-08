class Room < ApplicationRecord
  validates :room_name, presence: true
  has_one :player
end