class BooksController < ApplicationController
  before_action :find_author
  before_action :find_book, except: [:index, :new, :create]

  def index
    redirect_to @author
  end

  def new
    @book = Book.new
  end

  def create
    @book = @author.books.build(book_params)
    if @book.save
      redirect_to author_book_path(@author, @book)
    end
  end

  def show
  end

  def edit
  end

  def update
    if @book.update_attributes(book_params)
      redirect_to author_book_path(@author, @book)
    end
  end

  def destroy
    if @book.destroy
      redirect_to @author
    end
  end

  protected

  def find_author
    @author = Author.find(params[:author_id])
  end

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :synopsis, :year)
  end
end