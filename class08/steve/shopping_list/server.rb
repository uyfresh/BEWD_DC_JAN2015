require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# localhost:4567/
get '/:name' do
	@name = params[:name]
	@message = "The monkey flies at midnight"
	erb :index
end