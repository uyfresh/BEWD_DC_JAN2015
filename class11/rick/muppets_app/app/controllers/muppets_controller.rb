class MuppetsController < ApplicationController
  def index
    @muppets = Muppet.all
  end

  def show
    @muppet = Muppet.find(params[:id])
  end

  def new
    @muppet = Muppet.new
  end

  def create
    @muppet = Muppet.new(muppet_params)
  
    if @muppet.save
      redirect_to @muppet
    else
      render :new
    end
  end

  def edit
    @muppet = Muppet.find(params[:id])
  end

  def update
    #find the Muppet we want to update
    #update said muppet
    #redirect to the muppet
    @muppet = Muppet.find(params[:id])
    @muppet.update(muppet_params)
    
    if @muppet.update(muppet_params)
    redirect_to @muppet
    else
      render :edit
    end
  end

  def destroy
    #find the muppet
    #destroy said muppet
    #redirect to index
    @muppet = Muppet.find(params[:id])
    @muppet.destroy
    redirect_to muppets_path
  end

  private

    def muppet_params
      params.require(:muppet).permit(:name, :image_url)
    end

end