require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = []

get '/' do
	@list = list
	erb :index
end

get '/new' do
	@new = params(:new)
	erb :new
end

post '/create' do
	@creat = create
	list.push(params[:item])
	list.push(params[:price])
	list.push(params[:location])
	redirect '/'
end

get '/deals' do
	@deals = params[:deals].to_i
	@price = @deal < 20
end

get '/cities/:location' do
	"hello world"
	@location = params[:location]
	erb :cities
end

