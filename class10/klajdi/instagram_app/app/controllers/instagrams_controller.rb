class InstagramsController < ApplicationController

	def index
		@instagrams = Instagram.all
		render :index
	end

	def new
		render :new
	end

	def create
		Instagram.create({author: params[:author], photo_url: params[:photo_url], date_taken: params[:date_taken], caption: params[:caption]})
		redirect_to "/instagrams"
	end

	def show
		@instagrams = Instagram.find(params[:id])
		render :show
	end

end