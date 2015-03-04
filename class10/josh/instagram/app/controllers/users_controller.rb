class UsersController < ApplicationController

def index 
		@users = User.all
		render :index 
	end 

	def new 
		render :new
	end 


	def create 
		User.create({author: params[:author], photo_url: params[:photo_url]})
		redirect_to "/users"
	end 

	def show 
		@user = User.find(params[:id])
		render :show
	end 
end 