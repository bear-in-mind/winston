class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
    @songs = @show.songs.includes(:cells)
    @song_attributes = @show.song_attributes
  end
end
