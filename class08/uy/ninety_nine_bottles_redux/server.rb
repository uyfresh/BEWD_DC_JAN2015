require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  redirect '/verse/99'
end

get '/verse/:bottles' do
  @bottles = params[:bottles].to_i
  erb :verse
end

get '/refrain/:bottles' do
  @bottles = params[:bottles].to_i
  @next = @bottles - 1
  erb :refrain
end
