class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def play
    send_command "quodlibet --play"
    render layout: false
  end

  def pause
    send_command "quodlibet --pause"
    render layout: false
  end

  def stop
    send_command "quodlibet --stop"
    render layout: false
  end

  def play_previous
    send_command "quodlibet --previous"
    render layout: false
  end

  def play_next
    send_command "quodlibet --next"
    render layout: false
  end

  def enqueue_album
    @album = Album.find(params[:album_id])
    @album.songs.each do |s|
      send_command "quodlibet --enqueue \"#{s.filename}\""
    end
    render layout: false
  end

  def enqueue_song
    @song = Song.find(params[:song_id])
    send_command "quodlibet --enqueue \"#{@song.filename}\""
    render layout: false
  end

  private
  def send_command(cmd)
    puts cmd
    system(cmd)
  end
end
