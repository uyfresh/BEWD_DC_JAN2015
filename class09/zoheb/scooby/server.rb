require 'sinatra'
require 'sinatra/reloader'
require 'pry'

villain = "captain cutler"

get '/' do
	erb :index
end

get '/about.erb' do
	erb :about
end

get '/index.erb' do
	erb :index
end

get '/guess' do
	@correct = (params[:villain] == villain)
	erb :guess
end