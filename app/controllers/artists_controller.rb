class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :destroy]

  def index
    @artists = Artist.all
  end

  def show
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
