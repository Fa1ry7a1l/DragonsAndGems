class Rooms < ApplicationRecord
  validates :room_name, presence: true
  has_one :player
end