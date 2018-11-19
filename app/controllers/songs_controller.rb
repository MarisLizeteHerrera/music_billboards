class SongsController < ApplicationController
  # before_action :set_billboard, except: [:index, :new, :create]
  before_action :set_artist
  # , only: [:index, :new, :create]
  before_action :set_song, except: [:index, :new, :create]

  def index
    @songs = @artist.songs.all
  end

  def show

  end

  def new
    @song = @artist.songs.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @song = @artist.songs.new(song_params)

      if @song.save
        redirect_to @artist
      else
        render :new
      end
  end

  def update
    if @song.update(song_params)
      redirect_to [@artist, @song]
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to @artist
  end


  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    # def set_billboard
    #   @billboard = Billboard.find(params[:billboard_id])
    # end

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name)
    end
end
