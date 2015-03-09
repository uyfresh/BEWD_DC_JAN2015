class MoviesController < ApplicationController
	
	def index
		@movies = Movie.all.order(:year)
	end

	def show
		@movie = Movie.find(params[:id])
		@trailers = @movie.trailers.order(:title)
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

	private

	def movie_params
		params.require(:movie).permit(:tile, :year, :poster_url)
	end

end