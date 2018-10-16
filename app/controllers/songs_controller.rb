class SongsController < ApplicationController
  before_action :song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show

  end

  def new
    @song = Song.new
  end

  def create
    # byebug
    @song = Song.create(song_params)
    redirect_to @song
  end

  def edit

  end

  def update
    @song.update(song_params)
    redirect_to @song
  end

  def destroy

  end

  private

  def song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
