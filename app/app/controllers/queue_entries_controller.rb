class QueueEntriesController < ApplicationController
  def index
    @title = "Queue"
    @songs = Song.find_by_quodlibet_string(`quodlibet --print-queue`)
  end
end
