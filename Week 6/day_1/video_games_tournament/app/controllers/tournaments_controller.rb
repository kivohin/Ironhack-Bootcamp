class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def show
  	all_tournaments = Tournament.all.limit(100)

  	render json: all_tournaments
  end
end
