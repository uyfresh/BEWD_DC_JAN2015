class ApisController < ApplicationController

  def this_for_that
    response = HTTParty.get('http://itsthisforthat.com/api.php?json')
    @results = JSON.parse(response.body)
  end

  def itunes
    if params[:term]
      term = params[:term].gsub(' ', '+')
      media = params[:media] || 'music'
      response = HTTParty.get("http://itunes.apple.com/search?term=#{term}&media=#{media}&limit=1")
      results = JSON.parse(response.body)
      @results = results['results']
      @media = media
    else
      @results = []
    end
  end

  def giphy
    if params[:query]
      query = params[:query].gsub(' ', '+')
      response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{query}&api_key=dc6zaTOxFJmzC")
      results = JSON.parse(response.body)
      @results = results['data']
    else
      @results = []
    end
  end

end