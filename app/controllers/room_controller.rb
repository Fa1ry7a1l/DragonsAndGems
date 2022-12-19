class RoomController < ApplicationController
  def new
  end

  def find
  end

  def create
    pp create_params
    redirect_to "/room/#{create_params[:room_name]}"
  end

  def show
    @lists = Player.where(id: session[:player_id])[0].characters_lists
  end

  def join
    pp create_params
    pp params
    redirect_to "/room/#{create_params[:room_tag]}"
  end

  private
  def create_params
    params.require(:room).permit(:room_name,:room_tag)
  end
end
