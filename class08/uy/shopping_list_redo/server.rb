require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/verse" do |
	erb :verse	
end