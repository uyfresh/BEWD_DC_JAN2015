require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = []

get '/' do
  @list = list
  erb :index
end

get '/deals' do
	"Hello we got deals here"
	erb :deals
end

get '/cities/:location' do
	@location = params[:location]
	erb :cities
end

post 'add_items' do
	list.push(params[:item])
	redirect '/'	
end


