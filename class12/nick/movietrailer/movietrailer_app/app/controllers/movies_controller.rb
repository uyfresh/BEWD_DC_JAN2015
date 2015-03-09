class MoviesController < ApplicationController
	  # before_action :load_author
 	  # before_action :load_book, except: [:new, :create]


  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render :new
    end
  end

  def show
  	@movie = Movie.find(params[:id])
    @trailers = @movie.trailers.order(:title)
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
  	@movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to @movie
  end

  def destroy
  	@movie = Movie.find(params[:id])
  	@movie.destroy
  	redirect_to @movie
  end

  private

  # def load_author
  #   @author = Author.find(params[:author_id])
  #  end

  # def load_book
  #   @book = Book.find(params[:id])
  # end

  def movie_params
    params.require(:movie).permit(:title, :year, :poster_url)
  end
end