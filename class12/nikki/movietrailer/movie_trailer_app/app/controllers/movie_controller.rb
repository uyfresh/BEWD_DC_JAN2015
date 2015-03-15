class Movie < ApplicationController::Base

  def index
    @years = Movie.search(params[:search]).map do |m|
    m.year.uniq.sort.reverse
    @movies = Movie.search(params[:search]).order(:title)
  end

  def show
    load_trailer
    @trailser = movie.trailers
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def edit
    load_trailer
  end

  def update
    load_trailer
    if @movie.update(movie_params)
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    movie.destroy
    redirect_to movies_path
  end

private

  def load_trailer
    @movie =Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :year, :poster_url)
  end

end