class SongsController < ApplicationController
  def show
    if params[:search_term].present?
      response = HTTParty.get('https://itunes.apple.com/search?#{search_itunes}')
      @results = JSON.parse(response.body)
    else
      @results = []
    end
  end

  def search_itunes
      search_term = params[:search_term].gsub(' ', '+')
  end
end