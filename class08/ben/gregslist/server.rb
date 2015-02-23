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

list = []

# binding.pry

get '/' do
	@list = Item.all()
  	erb :index
end

get '/new' do
	erb :new
end

get '/deals' do
	@deals = Item.where("price < 20")
	erb :deals
end

get '/search' do
	@location = params[:location].upcase
	@city_items = Item.all().select { |item| item["location"].upcase == @location}
	erb :search_location
end

get "/cities/:location" do
	@location = params[:location].tr('_',' ').downcase
	@city_items = Item.all().select { |item| item["location"].downcase == @location}
	erb :cities
end

post '/create' do
	Item.create(item: params[:item], price: params[:price], location: params[:location])
	redirect '/'
end