class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(artistsort: :asc)
  end
end
