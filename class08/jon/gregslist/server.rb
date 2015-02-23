require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = []


get "/" do
	@list = list 
	erb :index
end

get "/new" do
	erb
end

get "/deals" do
	erb
end

get "/cities/:location" do
	erb
end

post '/create' do
	item = params[:item]
	price = params[:price]
	location = params[:location]
  list.push({:item => item, :price => price, :location => location})
  redirect '/'
end

