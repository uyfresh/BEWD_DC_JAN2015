require 'sinatra'
require 'sinatra/reloader'
require 'pry'

Villain = "Nick Olds"

get '/' do
	erb :index
end

get '/about' do
	erb :about
end

post '/guess' do
	@correct = (params[:villain] == villain
	erb :guess
end
