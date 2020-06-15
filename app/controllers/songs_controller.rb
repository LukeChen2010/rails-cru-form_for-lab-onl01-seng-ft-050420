class SongsController < ApplicationController
  def show
    @song = Song.find(id: params[:id])
  end
end