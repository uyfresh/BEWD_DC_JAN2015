class MoviesController < ApplicationController
	# before_action :find_movie

	def index
 	 	@movies = Movie.all
	end

	def search
		@movie = Movie.find (params[:search])
		redirect_to movie_path(@movie)
	end

	def new
		#create new movie
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
		@trailers = @movie.trailers

	end

	def edit
		#find movie by id
		#save movie to instance variable
		@movie = Movie.find(params[:id])
	end

	def update
		#update movie if needed params are filled in
		@movie = Movie.find(params[:id])
		if @movie.update(movie_params)
			redirect_to @movie
		else
			render :edit
		end
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_path
	end

	private

	# def find_movie
	# 	@movie = Movie.find(params[:id])
	# end

	def movie_params
		params.require(:movie).permit(:title, :year, :poster_url)
	end



end