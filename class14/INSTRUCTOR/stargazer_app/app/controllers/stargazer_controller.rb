class StargazerController < ApplicationController

  def index
    if params[:query]
      query = params[:query].gsub(' ', '+')
      response = HTTParty.get("http://www.strudel.org.uk/lookUP/json/?name=#{query}")
      result = JSON.parse(response.body)
      @result = result
    else
      @result = nil
    end
  end

end
