require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = ['eggs', 'bacon']

get "/" do
  @list = list
  erb :index
end

post '/add_item' do
  list.push(params[:item])
  redirect '/'
end