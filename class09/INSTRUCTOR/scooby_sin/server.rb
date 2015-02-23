require 'sinatra'
require 'sinatra/reloader'
require 'pry'

villain = "Mr Wiggles"

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/guess' do
  @correct = (params[:person] == villain)
  erb :guess
end