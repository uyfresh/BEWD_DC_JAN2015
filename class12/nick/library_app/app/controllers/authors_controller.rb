class AuthorsController < ApplicationController
	  #before_action :load_author
 	  # before_action :load_book, except: [:new, :create]


  def index
    @authors = Author.all.order(:last_name)
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render :new
    end
  end

  def show
  	@author = Author.find(params[:id])
    @books = @author.books.order(:title)
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
  	@author = Author.find(params[:id])
    @author.update(author_params)
    redirect_to @author
  end

  def destroy
  	@author = Author.find(params[:id])
  	@author.destroy
  	redirect_to @author
  end

  private

  # def load_author
  #   @author = Author.find(params[:author_id])
  # end

  # def load_book
  #   @book = Book.find(params[:id])
  # end

  def author_params
    params.require(:author).permit(:first_name, :last_name, :bio)
  end
end