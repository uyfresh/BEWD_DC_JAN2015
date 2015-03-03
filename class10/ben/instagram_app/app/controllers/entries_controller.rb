class EntriesController < ApplicationController

	def index
		@entries = Entry.all
		render :index
		# binding.pry
	end

	def new
		@new_entry = Entry.new
		render :new
	end

	def create
		@new_entry = Entry.new({author: params[:author], \
			image_url: params[:image_url], \
			caption: params[:caption], \
			date_taken: params[:date_taken]})
		# binding.pry
		if @new_entry.save
			redirect_to '/entries'
		else
			# @errors = @new_entry.errors.messages
			render :new
		end
	end

	def show
		@photo = Entry.find(params[:id])
		render :show
	end

	def about
		render :about
	end

	def faq
		render :faq
	end

end
