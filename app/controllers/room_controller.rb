class RoomController < BaseAuthController

  def new
  end



  def find
  end

  def create
    master_id = session[:user_id]
    room_name = create_params[:room_name]
    room_tag = generate_tag
    while Room.where(tag: room_tag).count != 0 do
      room_tag = generate_tag
    end
    session[:room] = room_tag
    room = Room.create(dungeon_master_id: master_id, room_name: room_name, tag: room_tag)
    player = Player.find_by_id(session[:user_id])
    player.room_id = room.id
    player.save
    redirect_to "/room/#{room_tag}"
  end

  def show
    @room_tag = session[:room]
    @messages = Room.where(tag: @room_tag)[0].messages
  end

  def join
    room_tag = create_params[:room_tag]
    rooms = Room.where(tag: room_tag)
    if Room.where(tag: room_tag).count != 0
      session[:room] = room_tag
      player = Player.find_by_id(session[:user_id])
      player.room_id = rooms[0].id
      player.save
      redirect_to "/room/#{room_tag}"
    else
      flash[:error] = "Room not found"
      redirect_to room_find_path
    end

  end

  private
  def create_params
    params.require(:room).permit(:room_name, :room_tag)
    end

  def generate_tag
    room_tag = ""
    (1..6).each { |i|
      room_tag += rand(10).to_s
    }

    room_tag
  end
end
