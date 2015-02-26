class WelcomeController < ApplicationController

	

	def index
		@english = [{:q1 => "How are you?", :q2 => "How old are you?", :q3 => "Do you like grapes?", :q4 => "What is your name?"}]
		render :index
	end

	def albanian
		@albanian = [{:q1 => "Si je?", :q2 => "Sa vjeç je?", :q3 => "Te pelqen rrushi?", :q4 => "Si e ke emrin?"}]
		render :albanian
	end

	def sentence
		render :sentence
	end

	# def sentence
	# 	a1 = params[:a1]
	# 	a2 = params[:a2]
	# 	a3 = params[:a3]
	# 	a4 = params[:a4]
	# 	@sentence = []
	# 	@sentence.push({:a1 => a1, :a2 => a2, :a3 => a3, :a4 => a4})
	# 	render :sentence
	# end


end