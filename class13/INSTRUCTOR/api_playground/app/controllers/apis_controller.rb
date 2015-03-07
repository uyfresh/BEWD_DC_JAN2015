class ApisController < ApplicationController

  def this_for_that
    response = HTTParty.get('http://itsthisforthat.com/api.php?json')
    @results = JSON.parse(response.body)
  end

  def itunes
    if params[:term]
      term = params[:term].gsub(' ', '+')
      media = params[:media] || 'music'
      results = HTTParty.get("http://itunes.apple.com/search?term=#{term}&media=#{media}&limit=1")
      results = JSON.parse(results)
      @results = results['results']
      @media = media
    else
      @results = []
    end
  end

end