class EntriesController < ApplicationController

	def index
		@entries = Entry.all
		render :index
	end

	def new
		render :new
	end

	def create
		Entry.create({author: params[:author], image_url: params[:image_url], date_taken: params[:date_taken]})
		redirect_to "/entries"
	end

	def show
		@entries = Entry.find(params[:id])
		render :show
	end

end