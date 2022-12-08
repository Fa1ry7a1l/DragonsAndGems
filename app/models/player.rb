class Player < ApplicationRecord
  validates :email, :player_name, presence: true
  validates :email, uniqueness: true

  has_many :characters_lists
  has_secure_password
end