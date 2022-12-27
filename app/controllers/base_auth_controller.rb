class BaseAuthController < ApplicationController
  before_action :authenticate_user

  def aaaa
  end

  private
  def authenticate_user
    @current_user = Player.find_by_id(session[:user_id])
    redirect_to login_path unless @current_user.present?
  end
end
