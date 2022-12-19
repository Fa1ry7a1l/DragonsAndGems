class LoginController < ApplicationController
  def new

  end

  def create
    player = Player.find_by_email(player_params[:email])
    if player.present? && player.authenticate(player_params[:password])
      session[:user_id] = player.id
      redirect_to root_path
    else
      flash[:error] = ['Invalid Credentials']
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  def omniauth
    @user = Player.from_omniauth(auth)
    @user.save
    session[:user_id] = @user.id
    redirect_to root_path
  end
  private
  def auth
    request.env['omniauth.auth']
  end

  def player_params
    params.require(:player).permit(:email, :password)
  end
end
