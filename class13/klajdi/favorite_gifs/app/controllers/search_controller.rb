class SearchController < ApplicationController

	def index
		if params[:search]
			search = params[:search].gsub(' ', '+')
			response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{search}&api_key=dc6zaTOxFJmzC")
			results = JSON.parse(response.body)
			@results = results['data']
		else
			@results = []
		end
	end

	def show
		response = HTTParty.get("http://api.giphy.com/v1/gifs?api_key=dc6zaTOxFJmzC&id=#{params[:id]}")
		@result = JSON.parse(response.body)
	end

end