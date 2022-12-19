# frozen_string_literal: true

class CharacterController < ApplicationController
  before_action :authenticate_user
  def list
    @characters = Player.where(id: session[:user_id])[0].characters_lists
    pp params
  end

  def new

  end
  def create
    pp params
    redirect_to character_list_path
  end
end