require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = []

get '/' do
  return 'Hello World.'
end

get '/shopping_list' do
  @list = list
  erb :index
end

post '/shopping_list' do
  list.push(params['item'])
  redirect request.path_info
end