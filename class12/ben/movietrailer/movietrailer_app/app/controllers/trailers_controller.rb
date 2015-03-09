class TrailersController < ApplicationController

	before_action :load_movie, except: [:index]
	before_action :load_trailer, except:  [:index, :new, :create]

	def index
		@trailers = Trailer.all
	end

	def show
	end

	def new
		@trailer = Trailer.new
	end

	def create
		@trailer = Trailer.new(trailer_params)
		@trailer.movie = @movie
		if @trailer.save
			flash[:notice] = "You have successfully added trailer: " + @trailer.title
			redirect_to movie_trailer_path(@movie, @trailer)
		else
			flash.now[:alert] = "Trailer not saved"
			render :new
		end
	end

	def edit
	end

	def update
		if @trailer.update(trailer_params)
			flash[:notice] = "You have successfully updated " + @trailer.title
			redirect_to movie_trailer_path(@movie, @trailer)
		else
			flash.now[:alert] = @trailer.title + " not updated"
			render :edit
		end
	end

	def destroy
		@trailer.destroy
		flash[:alert] = @trailer.title + " was deleted"
		redirect_to movie_path(@movie)
	end


	private

	def load_trailer
		@trailer = Trailer.find(params[:id])
	end

	def load_movie
		@movie = Movie.find(params[:movie_id])
	end

	def trailer_params
		# Code to try and parse the youtube URL to grab the embed code. It works, but don't know how to integrate with strong params
		# @embed = params[:trailer][:embed_url].split("=").count > 1 ? params[:trailer][:embed_url].split("=").last : params[:trailer][:embed_url]
		# binding.pry
		params.require(:trailer).permit(:title, :embed_url)
	end

end
