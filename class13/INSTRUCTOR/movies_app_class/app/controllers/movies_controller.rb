class MoviesController < ApplicationController

  def index
    if params[:search_term].present?
      search_term = params[:search_term].gsub(' ', '+')
      response = HTTParty.get("http://www.omdbapi.com/?s=#{search_term}")
      results = JSON.parse(response.body)
      @results = results['Search']
    else
      @results = []
    end
  end

  def show
    response = HTTParty.get("http://www.omdbapi.com/?i=#{params[:id]}")
    @result = JSON.parse(response.body)
    @favorite = Favorite.new(movie_id: @result['imdbID'], title: @result['Title'])
  end

end