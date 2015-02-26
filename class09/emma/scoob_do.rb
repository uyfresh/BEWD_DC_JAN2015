require 'sinatra'
require 'sinatra/reloader'

villain = "Phil"

get "/about" do
  erb :about
end

get "/" do
	erb :index
end

get "/guess" do
	@correct =(params[:villain] == villain)
	erb :guess
end