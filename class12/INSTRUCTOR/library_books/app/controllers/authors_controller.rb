class AuthorsController < ApplicationController
  before_action :find_author, except: [:index, :new, :create]

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
    end
  end

  def show
    @books = @author.books.order(:title)
  end

  def edit
  end

  def update
    if @author.update_attributes(author_params)
      redirect_to @author
    end
  end

  def destroy
    if @author.destroy
      redirect_to authors_path
    end
  end

  private

  def find_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:first_name, :last_name, :bio)
  end
end