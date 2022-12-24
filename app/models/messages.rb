class Message < ApplicationRecord
  validates :body, :owner, presence: true
  belongs_to :room
end
