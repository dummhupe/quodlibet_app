class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs, -> { order(tracknumber: :asc, title: :asc) }
end
