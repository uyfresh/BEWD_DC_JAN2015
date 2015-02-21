require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
	:adapter 	=> "postgresql",
	:host 		=> "localhost",
	:username	=> "benlcollins",
	:password	=> "",
	:database	=> "gregslist"
)

class Item < ActiveRecord::Base
	validates :item, presence: true
end

# binding.pry

list = []

get '/' do
	@list = Item.all()
  	erb :index
end

get '/new' do
	erb :new
end

get '/deals' do
	@deals = Item.all().select { |item| item["price"].to_i < 20}
	erb :deals
end

get '/search' do
	@location = params[:location].upcase
	@city_items = Item.all().select { |item| item["location"].upcase == @location}

	# redirect '/cities'
	erb :search_location
end

get "/cities/:location" do
	@location = params[:location].camelize(:lower)
	@city_items = Item.all().select { |item| item["location"].parameterize("_").camelize(:lower) == @location}
	erb :cities
end

post '/create' do
	Item.create(item: params[:item], price: params[:price], location: params[:location])
	redirect '/'
end