require 'sinatra'
require 'sinatra/reloader'
require 'pry'


# localhost:4567
get '/:name' do
	@name = params[:name]
	@message = "The monkey flies at midnight"
  	erb :index
end

# localhost:4567/hello
get '/hello' do
  "Hello, thank you for visiting, person."
end

get '/hello/:name' do
	"Hello World!"
end

get 'hello/:name/:other_name' do
	"Hello #{params[:name]}, you should say hello to #{params[:other_name]}"
end
