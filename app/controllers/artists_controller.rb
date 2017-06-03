class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :destroy]

  def index
    @artists = Artist.all.order_by(params[:sort_by])
  end

  def new_song
    @song = Song.new
    redirect_to artist_path(@artist.id)
  end

  def show
    @song = @artist.songs
  end

  def destroy
    @artist.destroy
    redirect_to artists_path, notice: "Artist and all the songs of that artist have been deleted"
  end

  private

    def set_artist
      @artist = Artist.find(params[:id])
    end
end
