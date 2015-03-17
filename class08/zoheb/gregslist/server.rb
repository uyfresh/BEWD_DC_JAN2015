require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = [{:item => 'Microwave', :price => 30, :location => 'NoMa'}]

get '/' do
	@list = list
	binding.pry
	erb :index
end

get '/new' do
	erb :new
	@item = item
	@price = price.to_f
	@location = location.strip.capitalize
end

post '/create' do
	list.push(params)
	redirect '/'
end

get '/deals' do
	erb :deals
end