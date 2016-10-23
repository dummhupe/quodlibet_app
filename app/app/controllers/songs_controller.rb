class SongsController < ApplicationController
  def index
    @songs = Song.where(album_id: params[:album_id])
  end
end
