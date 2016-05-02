class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def show
  	all_tournaments = Tournament.all.limit(100)

  	render json: all_tournaments
  end

  def create
  	new_tournament = Tournament.create(tournament_params)

  	render json: new_tournament
  end

  private

  def tournament_params
  	params.require(:tournament).permit(:name)
  end
end
