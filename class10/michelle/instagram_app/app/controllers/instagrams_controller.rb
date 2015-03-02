class InstagramsController < ApplicationController
	def index
		@instagram = Instagram.all
		render :index
	end
end