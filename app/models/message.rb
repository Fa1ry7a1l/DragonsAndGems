class Message < ApplicationRecord
  validates :body,:owner, presence: true
  belongs_to :room

  def direction(user)
    self.owner == user ? 'outgoing' : 'incoming'
  end
end
