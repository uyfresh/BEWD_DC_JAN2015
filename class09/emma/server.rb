require 'sinatra'
require 'sinatra/reloader'

get "/" do
  @message = "Hello World"
  erb :index
end