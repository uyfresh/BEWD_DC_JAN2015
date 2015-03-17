class DogsController < ApplicationController

	def index
		@dogs=Dog.all
		render :index
	end

	def new
		render :new
	end

	def create
		Dog.create({:name => params[:name], :age => params[:age].to_i, :url => params[:url]})
	end
end