require 'sinatra'
require 'sinatra/reloader'
require 'pry'

villain = "Phil"

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/guess' do
  @guess_is_correct = (params[:villain] == villain)
  erb :guess
end