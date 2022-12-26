class MessageController < BaseAuthController

  def index
    @messages = Room.where(tag: session[:room])[0].messages
  end

  def send_message
    @room_tag = session[:room]
    pp @room_tag
    pp getMessageParams

    message = Message.new(body: getMessageParams, room_id: Room.where(tag: @room_tag)[0].id, owner:@current_user.id)
    pp message
    pp message.save
    pp message.valid?
    pp message.errors.full_messages
    ##return render status: :bad_request unless message.valid?

    redirect_to "/room/#{@room_tag}"
  end

  private

  def getMessageParams
    params.require(:message).require(:body)
  end
end
