class GenresController < ApplicationController
  def show
    @genre = Genre.find(id: params[:id])
  end
end