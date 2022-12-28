class MessageController < BaseAuthController

  def send_message

    @room_tag = session[:room]

    message = Message.new(body: message_params, room_id: Room.where(tag: @room_tag)[0].id, owner: @current_user.id)
    message.save
    message.valid?
    return render status: :bad_request unless message.valid?
    ActionCable.server.broadcast("room_#{@room_tag}",
                                 { body: message.body,
                                   created_at: message.created_at,
                                   owner: @current_user.id,
                                   owner_name: @current_user.player_name})
    render status: :ok, json: {}
  end

  private

  def message_params
    params.require(:message).require(:body)
  end
end
