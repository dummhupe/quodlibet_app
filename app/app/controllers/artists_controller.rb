class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:artist)
  end
end
