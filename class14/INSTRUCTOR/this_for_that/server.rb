require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

get "/" do
  response = HTTParty.get('http://itsthisforthat.com/api.php?json')
  result = JSON.parse(response.body)
  return "<h1>It's a #{ result['this'] } for #{ result['that'] }.</h1>"
end