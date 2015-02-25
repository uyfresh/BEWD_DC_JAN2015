class WelcomeController < ApplicationController

	def index
		render :index
	end

	def about
	end

	def application
		render :layout => false
	end

end
