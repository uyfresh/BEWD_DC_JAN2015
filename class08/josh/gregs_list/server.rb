require 'sinatra'
require 'sinatra/reloader'
require 'pry'


list = []

get '/' do 
	@list = list
	erb :main
end 


get '/new' do 
	@list = list
	erb :new
end 


post '/create' do
	item = params[:item]
	price = params[:price].to_i
	location = params[:location]
	list.push({:item => item, :price => price,:location => location})
	redirect '/'
end 

get '/deals' do 
	@deals = list.select do |low_price|
		low_price[:price] < 20
	end 
	erb :deals

get '/cities/:location' do 
	@location = params[:location].tr('_',' ').downcase
	@city_items = list.select { |item| item["location"].downcase == @location}
	erb :cities
end 


end 

