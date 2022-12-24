class MessageController < BaseAuthController

  def index
    room_tag = session[:room]
    @room = Room.where(tag: room_tag)[0]
    pp @room
    @messages = Message.where(rooms_id: @room.id)
    pp @messages
  end

  def send_message
    room_tag = session[:room]

    message = Message.create(body: params.require(:body))
    message.room = room_tag
    message.save
    return render status: :bad_request unless message.valid?

    redirect_to "/room/#{room_tag}"
  end
end
