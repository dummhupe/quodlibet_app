class AlbumsController < ApplicationController
  def index
    @albums = Artist.find(params[:artist_id]).albums
  end
end
