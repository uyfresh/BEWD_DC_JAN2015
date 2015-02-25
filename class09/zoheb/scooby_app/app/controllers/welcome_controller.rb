class WelcomeController < ApplicationController
	def index #This is the index action
		render :index #render is used instead of erb in Rails
	end

	def about #This is the about page.
		render :about
	end
end