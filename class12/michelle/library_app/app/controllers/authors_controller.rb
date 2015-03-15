class AuthorsController < ApplicationController
  def index
    @authors = Author.all.order(:last_name)
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    #create only with the stuff that's been given
    if @author.save
      redirect_to @author
    else
      render :new
  end

  def show
    @author = Author.find(params[:id])  
  end
end