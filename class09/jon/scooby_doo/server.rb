require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
	erb :index
end

get '/about' do
	erb :about
end


villain = "Peter"

get '/guess' do
  @correct = (params[:villain] == villain)
  erb :guess
end


