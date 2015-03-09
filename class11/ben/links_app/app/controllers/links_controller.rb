class LinksController < ApplicationController

	def index
		# if sort or direction params are nil or false, set defaults as "created_at" and "asc"
		params[:sort] ||= "created_at"
		params[:direction] ||= "asc"

		# pass parameters into order class
		# SQL will execute with "ORDER BY" clause and "ASC" or "DESC"
		# This is a SQL injection, so not best practise!
		@links = Link.order(params[:sort] + " " + params[:direction])
		# binding.pry
	end

	def show
		@link = Link.find(params[:id])
	end

	def new
		@link = Link.new
	end

	def create
		# create new link
		# redirect to links page
		@link = Link.new(links_params)
		if @link.save
			flash[:notice] =  "Link \"" + @link.link_url + "\" was added successfully"
			redirect_to links_path
		else
			render 'new'
		end
	end

	def edit
		@link = Link.find(params[:id])
	end

	def update
		@link = Link.find(params[:id])
		if @link.update(links_params)
			flash[:notice] =  "Link \"" + @link.link_url + "\" was updated successfully"
			redirect_to links_path
		else
			render 'edit'
		end
	end

	def destroy
		@link = Link.find(params[:id])
		@link.destroy
		flash[:notice] =  "Link \"" + @link.link_url + "\" was deleted"
		redirect_to links_path
	end

	private

	def links_params
		params.require(:link).permit(:author, :link_url, :description)
	end

end
