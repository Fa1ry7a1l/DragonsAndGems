class ApplicationController < ActionController::Base
  def authenticate_user
    @current_user = Player.find_by_id(session[:user_id])
    redirect_to login_path unless @current_user.present?
  end
end
