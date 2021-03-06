class ScoresController < ApplicationController
  def index
    matches = Match.today

    render json: matches, each_serializer: ScoreSerializer
  end

  def show
    team = Team.where("acronym = ?", params[:id].upcase).first

    render json: team.past_matches, each_serializer: ScoreSerializer
  end

  def recap
    matches = Match.yesterday

    render json: matches, each_serializer: ScoreSerializer
  end
end
