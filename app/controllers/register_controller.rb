class RegisterController < ApplicationController
  def new

  end

  def create
    player = Player.new(player_params)
    if player.save
      session[:user_id] = player.id
      redirect_to login_path
    else
      flash[:error] = player.errors.full_messages
      redirect_to register_path
    end
  end

  private

  def player_params
    params.require(:player)
          .permit(:player_name,:email,
                  :password,
                  :password_confirmation)
  end
end
