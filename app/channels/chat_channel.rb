class ChatChannel < ApplicationCable::Channel
  def subscribed
    pp 'started connection'
    pp params

    stream_from "room_#{params[:room]}"
  end

  def unsubscribed
    pp 'connection finished'

    # Any cleanup needed when channel is unsubscribed
  end
end
