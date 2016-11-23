class SongsController < ApplicationController
  before_action :set_artist

  def index
    @artist = Artist.find(params[:artist_id])
    @songs = @artist.songs
  end

  def create
    song = @artist.songs.build(song_params)

    if song.save
      render status: 200, json: {
        message: "Song successfully added",
        song: song
      }.to_json
    else
      render status: 422, json: {
        error: song.errors.full_messages
      }.to_sjon
    end
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def song_params
      params.require(:song).permit(:title, :album, :year)
    end

end
