class BooksController < ApplicationController
  before_action :load_author

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.author = @author
    if @book.save
      redirect_to author_book_path(@author, @book)
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end


  private

  def load_author
    @author = Author.find(params[:author_id])
  end

  def book_params
    params.require(:book).permit(:title, :synopsis, :image_url)
  end

end