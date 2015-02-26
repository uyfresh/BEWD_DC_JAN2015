require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = []


#this is a route localhost:4567
get '/names/:name' do
	#this is an instance variable
	@name = params [:name]
	@message = 'The monkey flies at midnight'
	#this allows you to store HTML on a page that you can access
	erb :index
	
end

#this is a route localhost:4567/hello
get '/hello' do 
	"Hello, thank you for visiting, person."
end

get '/hello/:name/:other_name' do
	binding.pry
	"Hello #{params[:name]}, you should say hello to #{params[:other_name]}."
end
