class LinksController < ApplicationController
  def search
    short_link = 'localhost:3000/' + params[:shortlink]
   	redirect_to 'http://' + Link.search_original_link(short_link)
  end
end
