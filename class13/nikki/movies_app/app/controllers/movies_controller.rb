class MoviesController <ApplicationController::Base

  def index
    if params[:search]
      search = params[:search].gsub(' ', '+')
      response = HTTParty.get("http://www.omdbapi.com/?s=#{search}")
      results = JSON.parse(response.body)
      @results = results['Search']
    else
      @results = []
  end

  def show
    response = HTTParty.get("http://www.omdbapi.com/?i=#{params[:id]}")
    @results = JSON.parse(response.body)
  end


end