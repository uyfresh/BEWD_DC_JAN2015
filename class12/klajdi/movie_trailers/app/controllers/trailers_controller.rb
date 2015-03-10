class TrailersController < ApplicationController
	before_action :load_movie
	# before_action :load_trailer

	# def index
		
	# end

	def new
		@trailer = Trailer.new
	end

	def create
		@trailer = Trailer.new(trailer_params)
		@trailer.movie = @movie
		if @trailer.save
			redirect_to movie_trailer_path(@movie, @trailer)
		else
			render :new
		end
	end

	def show
		@trailer = Trailer.find(params[:id])
	end

	# def edit
	
	# end

	# def update
	
	# end

	# def destroy
	
	# end

	private

	def load_movie
		@movie = Movie.find(params[:movie_id])
	end

	# def load_trailer
	# 	@trailer = Trailer.find(params[:id])
	# end

	def trailer_params
		params.require(:trailer).permit(:title, :embed_url)
	end

end