characters = []

class WelcomeController < ApplicationController
	def index
		render :index
	end

	def about
		render :about
	end

	def poll
		render :characters

	end

end