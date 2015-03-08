class TrailersController < ApplicationController


	def new
	end

	def create
	end

	def show
		@trailer = Trailer.find(params[:id])
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def load_movie
	end

	def load_trailer
	end

	def trailer_params
		params.require(:trailer).permit(:title, :embed_url)
	end


end