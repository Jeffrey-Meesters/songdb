class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
  @artist = Artist.find(params[:id])
  end


  def by_name
    @artists = Artist.by_name
    render action: :index
  end

  def by_created_at
    @artists = Artist.created_at
    render action: :index
  end

end
