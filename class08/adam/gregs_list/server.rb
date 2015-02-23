require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = []


#landing page that contains the listings
get '/' do
@list = list
  erb :home
end

get "/new" do
	@list = list
	#go to form
	erb :new
end	

post '/create' do
	#capture the 3 values from the params, put in local variables
	item = params[:item]
	price = params[:price]
	location = params[:location]
	list.push({:item => item, :price => price, :location => location})
	redirect '/'	
end

get "/deals" do
	@deals = list.select do |price|
		price[:price].to_i < 20
	end
end

get "/cities/:location" do
	@location = params[:location]
	@cities = list.select do |city|
		city[:location]
	erb :deals
	end
	end

