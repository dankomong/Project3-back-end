class PlayersController < ApplicationController
  def index
    @players = Player.all
    render json: @players
  end

  def create
    @player = Player.find_or_create_by(params.permit(:name))
    render json: @player
  end
end
