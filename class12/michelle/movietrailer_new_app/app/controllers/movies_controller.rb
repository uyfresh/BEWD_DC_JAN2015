class MoviesController < ApplicationController
  def index
  	@movies = Movies.all
  end

  def show
  	@movie = Movie.find(params[:id])
  end

  def new
  	@movie = Movie.new
  end

  def create
  	@movie = Movie.create(params[:movie])
  	redirect_to @movie
  end

  private

  def movie_params
  	params.require(:movie).permit(:title, :year, :poster_url)
  end

  def update
  	@movie = Movie.find(params[:id])
  	@movie.update(movie_params)
  	redirect_to @movie
  end

  def destroy
  	@movie = Movie.find(params[:id])
  	@movie.destroy
  	redirect_to movie_path
  end
end