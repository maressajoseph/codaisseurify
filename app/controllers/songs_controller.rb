class SongsController < ApplicationController
  before_action :set_artist, only: [:new, :create, :destroy, :destroy_all]
  before_action :set_song, only: [:destroy]

  def new
    @song = Song.new
    redirect_to artist_path(@artist.id)
  end

  def create
    @song = Song.new(song_params.merge(artist_id: params[:artist_id]))
    @songs = Song.where(artist_id: @artist.id)

    if @song.save

      respond_to do |format|
        format.html { redirect_to artist_path(@artist.id), notice: "Song successfully created" }
        format.js { redirect_to artist_path(@artist.id), notice: "Song successfully created" }
      end
    else
      render 'artists/show'
    end
  end


  #def update
  #  if @song.update(song_params)
  #    redirect_to @song, notice: "Song successfully updated"
  #  else
  #    render :edit
  #  end
  #end

  def destroy
    @song.destroy!
    @songs = Song.where(artist_id: @artist.id)

    respond_to do |format|
      format.html { redirect_to artist_path(@artist.id), notice: "Song has been deleted" }
      format.js { redirect_to artist_path(@artist.id), notice: "Song has been deleted" }
    end
  end

  def destroy_all
    @song = Song.all
    @song.destroy_all

    respond_to do |format|
      format.html { redirect_to artist_path(@artist.id), notice: "Songs have been deleted" }
      format.js { redirect_to artist_path(@artist.id), notice: "Songs have been deleted" }
    end
  end

  private

    def set_song
      @song = Song.find(params[:id])
    end
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end


    def song_params
      params.require(:song).permit(:name, :album, :release_date)
    end
end
