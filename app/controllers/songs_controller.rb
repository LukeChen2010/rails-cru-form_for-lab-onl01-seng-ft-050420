class SongsController < ApplicationController
    def show
    @song = Song.find(params[:id])
  end
  
  def new
    @song = Song.new
  end
  
  def create
	  @song = Song.new(artist_params)
	  @song.save
	  redirect_to artist_path(@song)
	end

	def edit
		@song = Song.find(params[:id])
	end

	def update
	  @song = Song.find(params[:id])
	  @song.update(artist_params)
	  redirect_to artist_path(@song)
	end

  private
  
  	def artist_params
  		params.require(:song).permit(:name, :artist, :genre)
  	end
end