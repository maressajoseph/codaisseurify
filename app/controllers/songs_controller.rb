class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = artist.songs
  end

  def show
  end

  def new
    @song = artist.songs.build
  end

  def create
    @song = artist.songs.build(song_params)

    if @song.save
      redirect_to @song, notice: "Song successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to @song, notice: "Song successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to songs_path, notice: "Song has been deleted"
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :album, :release_date)
    end
end
