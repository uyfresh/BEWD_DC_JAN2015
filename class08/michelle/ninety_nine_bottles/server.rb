require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/verse/:bottles" do
	@bottles = params[:bottles].to_i
	erb :verse
end

get "/refrain/:bottles" do
	@bottles = params[:bottles].to_i
	@next_bottles = @bottles - 1
	erb :refrain
end
