class PlayersController < ApplicationController
  def index
    @players = Player.all
    render json: @players
  end

  def create
    Player.find_or_create_by(params.permit(:name))
  end
end
