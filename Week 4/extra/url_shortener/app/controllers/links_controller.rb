class LinksController < ApplicationController
  def search
    short_link = 'localhost:3000/' + params[:shortlink]
    link_id = Link.find_by(short_URL: short_link).id
    original_link = Link.find_by(id: link_id).original_URL
    redirect_to 'http://' + original_link
  end
end
