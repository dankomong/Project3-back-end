class ScoresController < ApplicationController
  def index
    @top_scores = Score.all.order(score: :desc)[0..4]
    render json: @top_scores
  end

  def create
    @player = Score.create(params.permit(:score, :player_id))
  end

end
