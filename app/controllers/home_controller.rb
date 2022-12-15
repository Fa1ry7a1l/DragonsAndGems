class HomeController < ApplicationController
  before_action :authenticate_user
  def defffff
    pp params
  end
end
