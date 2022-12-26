class MessageController < BaseAuthController

  def send_message

    @room_tag = session[:room]

    message = Message.new(body: getMessageParams, room_id: Room.where(tag: @room_tag)[0].id, owner: @current_user.id)
    message.save
    message.valid?
    return render status: :bad_request unless message.valid?
    ActionCable.server.broadcast 'chat_channel',
                                 body: message.body,
                                 created_at: message.created_at
    render status: :ok, json: {}
  end



private

def getMessageParams
  params.require(:body).require(:message).require(:body)
end
end
