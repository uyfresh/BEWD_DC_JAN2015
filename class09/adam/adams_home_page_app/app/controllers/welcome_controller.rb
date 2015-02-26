class WelcomeController < ApplicationController

def index
	render :index
end

def about
	render :about
end

def photos
	render :photos
end

def ask
	render :ask
end

end