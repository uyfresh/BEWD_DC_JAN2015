class MoviesController < ApplicationController

	def index
		# get array of years, use search function defined in movie model
		@years = Movie.search(params[:search]).map do |m|
			m.year
		end.uniq.sort.reverse

		@movies = Movie.search(params[:search]).order(:title)
		# binding.pry
	end

	def show
		load_movie
		@trailers = @movie.trailers
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			flash[:notice] = "You have successfully added movie: " + @movie.title
			redirect_to movies_path
		else
			flash.now[:alert] = "Movie not saved"
			render :new
		end
	end

	def edit
		load_movie
	end

	def update
		load_movie
		if @movie.update(movie_params)
			flash[:notice] = "You have successfully updated movie: " + @movie.title
			redirect_to movie_path(@movie)
		else
			flash.now[:alert] = @movie.title + " not updated"
			render :edit
		end
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		flash[:alert] = @movie.title + " was deleted"
		redirect_to movies_path
	end


	private

	def load_movie
		@movie = Movie.find(params[:id])
	end

	def movie_params
		params.require(:movie).permit(:title, :year, :poster_url)
	end

end