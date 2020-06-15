class GenresController < ApplicationController
  def show
    @genre = Artist.find(params[:id])
  end
  
  def new
    @genre = Artist.new
  end
  
  def create
	  @genre = Artist.new(artist_params)
	  @genre.save
	  redirect_to artist_path(@genre)
	end

	def edit
		@genre = Artist.find(params[:id])
	end

	def update
	  @genre = Artist.find(params[:id])
	  @genre.update(artist_params)
	  redirect_to artist_path(@genre)
	end

  private
  
  	def artist_params
  		params.require(:genre).permit(:name)
  	end
end