class UsersController < ApplicationController
	def index
		@user = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.save
		redirect_to users_path
		#puts user_params
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to users_path #si coloco user_path, se ira a la vista show (vista de un solo user), pero como no la necesito lo coloco en plural para que se me vaya a la vistad de todas las torres
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end
	
	def user_params
		params.require(:user).permit(:name, :apartment, :document)
	end

end
