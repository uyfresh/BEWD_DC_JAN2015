class MoviesController < ApplicationController
	before_action :find_movie, except: [:index, :new, :create]

	def index 
		@movies = Movie.all.order(:title)
	end

	def new
		@movies = Movie.new
	end

	def create
		@movies = Movie.new(movie_params)
		if @move.save
			redirect_to @movie
		end
	end

	def show 
		@trailer = @movies.trailers.order(:title)
	end

	def edit 
	end

	def update 
		if @movie.update_attributes(movie_params)
			redirect_to movies_path
		end
	end

	private 
	def movie_params
		params.require(:movie).permit(:title, :poster_url, :year)
	end

	def find_movie
		@movie = Movie.find(params[:id])
	end

end