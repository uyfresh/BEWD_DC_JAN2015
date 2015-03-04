class FriendsController < ApplicationController
	
	def index
		@friends = Friend.all 
	end

	def show
		@friend = Friend.find(params[:id])
	end

	def new
		@friend = Friend.new
	end

	def create
		@friend = Friend.create(friend_params)

		if @friend.save
			redirect_to @friend
		else
			render :new
		end
	end

	def edit
		@friend = Friend.find(params[:id])
	end

	def update
		@friend = Friend.find(params[:id])

		if @friend.update(friend_params)
			redirect_to @friend
		else
			render :edit
		end
	end

	def destroy
		@friend = Friend.find(params[:id])
		@friend.destroy
		redirect_to friends_path
	end

	private

	def friend_params
		params.require(:friend).permit(:first_name, :last_name, :photo_url, :hobbies, :bio)
	end

end