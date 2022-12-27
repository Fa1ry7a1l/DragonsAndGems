class ChatChannel < ApplicationCable::Channel
  def subscribed
    pp 'started connection'

    stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
