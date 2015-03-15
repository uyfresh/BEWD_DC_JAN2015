require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = []

get "/" do
	@list = list
	erb :index
end

post '/add_item' do
  list.push(params[:item => 'fouton', :price => 100, :location => 'Arlington'])
  list.push(params[:item => 'unicycle', :price => 25, :location => 'Silver Spring'])
  redirect '/'
end

get "/deals" do
	@deals = params[:price < 20].to_i
	erb :good_deals
end

get "/cities/:location" do
	@deals = params[:location]
	erb :cities
end

