class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end
  
  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end
  
  def create
    @cat = Cat.create(cat_params)
    redirect_to @cat
  end
  
  def edit
    @cat = Cat.find(params[:id])
  end
  
  def update
    @cat = Cat.find(params[:id])
    @cat.update(cat_params)
    redirect_to @cat
  end
  
  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to cats_path
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :image_url)
  end
end