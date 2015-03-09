class AuthorsController < ApplicationController

	def index
		@authors = Author.all.order(:last_name)
	end

	def new
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to @author
		else
			render :new
		end
	end

	def show
		@author = Author.find(params[:id])
	end

	private

	def author_params
		params.require(:author).permit(:first_name, :last_name, :bio)
	end

end