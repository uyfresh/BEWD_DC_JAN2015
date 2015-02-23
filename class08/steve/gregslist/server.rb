require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# Setup a Sinatra app with a `list = []` variable for storing data
list = []


# Create a view for `get "/"`
get "/" do
	#Make this view display an HTML table with rows and columns for all items in the list.
	@list = list
	erb :index
end

# Create a view for `get "\new"`.
get "/new" do
# Include a form in this view with fields for "item", "price", and "location".
	@list = list
	erb :new
end

#Make this view submit to `post "\create"`.
post "/create" do
	item = params[:item]
	price = params[:price]
	location = params[:location]
	list.push({:item => item, :price => price, :location => location})
	redirect "/"
end

#Create a view for `get "/deals"`.
get "/deals" do
#Make this view display an HTML table with rows and columns for all items with a price under $20.
	@deals = list.select do |deal|
		deal[:price].to_i < 20
	end
	erb :deals
end

#Create a view for `get "/cities/:location"`.
get "/cities/:city" do
#Make this view display an HTML table with rows and columns for all items who's locations match the route variable. 
	@city = params[:city]
	@list_of_cities = list.select do |place|
		place[:location].downcase == @city.downcase.tr('_', ' ')
	end
	erb :cities
end