require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = [{:item => 'fouton', :price => 100, :location => 'Arlington'},
  {:item => 'unicycle', :price => 25, :location => 'Silver Spring'}]

get "/new" do
	@list = list
	erb :index
end

post "/create" do
	list.push(params[:item])
	list.push(params[:price])
	list.push(params[:location])
	redirect "/new"
end

get "/" do 
	erb :display_items
end

get "/deals" do 
	erb :deals
end

get "/cities/:location" do 
	@location = paramsci[:location]
	erb :cities
end