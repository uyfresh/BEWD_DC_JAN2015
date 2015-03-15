class MoviesController < ApplicationController

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

def movie_params
	params.require(:movie).permit(:title, :year, :poster_url)
end 


end 