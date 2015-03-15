class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def create
    favorites_params = params.require(:favorite).permit(:movie_id, :title)
    @favorite = Favorite.create(favorites_params)
    redirect_to favorites_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path
  end

end