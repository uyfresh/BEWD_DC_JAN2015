class SuperherosController < ApplicationController
  def index
    @superheros = Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.create(superhero_params)
    redirect_to @superhero
  end

  def edit
    @superhero = Suphero.find(params[:id])
  end

  def update
    @superhero = Superhero.find(params[:id])
    @superho.update(superhero_params)
    redirect_to @superhero
  end

  def destroy
    @superhero = Superhero.find(params[:id])
    @superhero.destroy
    redirect_to superheros_path
  end
end

private

def superhero_params
  params.require(:superhero).permit(:name, :image_url, :power)
end