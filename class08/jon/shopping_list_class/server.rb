require 'sinatra'
require 'sinatra/reloader'

require 'pry'



# localhost:4567/     <-- These are routes
get '/:name' do
  @name = params[:name]
  @message = "The monkey flies at midnight"
  erb :index
end

# localhost:4567/hello      <-- These are routes
get '/hello' do
  "Hello, thank you for visiting!"
end




get '/hello/:name/:other_name' do		
  "Hello #{params[:name]}, you should hello to #{params[:other_name]}!"
end