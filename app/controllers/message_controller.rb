class MessageController < BaseAuthController

  def send_message

    @room_tag = session[:room]

    message = Message.new(body: getMessageParams, room_id: Room.where(tag: @room_tag)[0].id, owner: @current_user.id)
    message.save
    message.valid?
    return render status: :bad_request unless message.valid?
    respond_to do |format|
      format.html { redirect_to "/" }
      format.json { render json: {
        body: message.body,
        created_at: message.created_at
      } }
    end

  end

  private

  def getMessageParams
    params.require(:body).require(:message).require(:body)
  end
end
