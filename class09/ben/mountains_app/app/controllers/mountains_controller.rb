class MountainsController < ApplicationController

	def everest
		render :everest
	end

	def k2
		render :k2
	end
	
	def kanchenjunga
		render :kanchenjunga
	end

	def lhotse
		render :lhotse
	end

	def search
		@search_string = params[:search_string]
		render :search
	end

end
