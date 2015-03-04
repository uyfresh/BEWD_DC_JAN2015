class BooksController < ApplicationController
  before_action :load_author
  before_action :load_book, except: [:new, :create]

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
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to author_book_path(@author, @book)
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to @author
  end

  private

  def load_author
    @author = Author.find(params[:author_id])
  end

  def load_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :synopsis, :year)
  end
end