class MessageController < BaseAuthController

  def index
    room_tag = session[:room]
    @messages = Room.where(tag: room_tag).messages
    pp @messages
  end

  def message
    room_tag = session[:room]

    message = Message.create(body: params.require :body)
    message.room = room_tag
    message.save
    return render status: :bad_request unless message.valid?

    redirect_to "/room/#{room_tag}"
  end
end
