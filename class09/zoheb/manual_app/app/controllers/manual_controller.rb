class ManualController < ApplicationController
	def index
		render :index
	end

	def about
		render :about
	end

	def enroll
		render :enroll
	end

	def all_enroll
		render :all_enroll
	end

	def analytics
		render :analytics
	end

end	