class Song < ActiveRecord::Base
  belongs_to :album

  def self.find_by_quodlibet_string(list)
    result = []
    list.split("\n").each do |file|
      file = URI.unescape(file).sub("file://","")
      song = Song.where(filename: file).first
      result << song if song.present?
    end
    return result
  end
end
