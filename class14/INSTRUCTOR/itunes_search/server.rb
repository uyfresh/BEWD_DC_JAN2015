require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pp'

get '/search' do
  if params[:term]
    term = params[:term].gsub(' ', '+')
    results = HTTParty.get("http://itunes.apple.com/search?term=#{term}&media=music&entity=musicTrack&limit=20")
    results = JSON.parse(results)
    @results = results['results']
  else
    @results = []
  end
  erb :search
end