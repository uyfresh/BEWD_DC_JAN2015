require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = []

#this shows the index page
get '/' do 
#this grabs items for display
	@list = list
	erb :index
end

# this displays the 'new' page
get '/new' do
  erb :new
end

#this pushes the data from 'new' onto the index page
 post '/create' do
  list.push [{item => 'item', :price => 'price', :location => 'location'}]
  redirect '/'
end

# # binding.pry

#get '/list/:item/:price/:location' do
