class Player < ApplicationRecord
  validates :email, :player_name, presence: true
  validates :email, uniqueness: true

  has_many :characters_lists
  has_secure_password

  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize do |user|
      user.player_name = auth.info.name
      user.email = auth.info.email
      user.password = SecureRandom.hex
    end
  end

end