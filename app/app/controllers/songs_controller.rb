class SongsController < ApplicationController
  def index
    @songs = Album.find(params[:album_id]).songs
  end
end
