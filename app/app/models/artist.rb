class Artist < ActiveRecord::Base
  has_many :albums, -> { order(date: :asc, albumsort: :asc, album: :asc) }
end
