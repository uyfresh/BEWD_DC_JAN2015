require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = ['eggs', 'bacon']

get "/" do
  @list = list
  erb :index
end