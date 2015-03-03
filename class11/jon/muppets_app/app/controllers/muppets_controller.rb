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
		@muppet = Muppet.create(muppet_params)
		redirect_to @muppet
	end

	def edit
		@muppet = Muppet.find(params[:id])
	end 

	def update
		@muppet = Muppet.find(params[:id])
		@muppet.update(muppet_params)
		redirect_to @muppet
	end

	def destroy
		@muppet = Muppet.find(params[:id])
		@muppet.destroy
		redirect_to muppets_path
	end

	private

	def muppet_params
		params.require(:muppet).permit(:name, :image_url)
	end

end