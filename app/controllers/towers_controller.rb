class TowersController < ApplicationController
	def index
		@tower = Tower.all
	end

	def new
		@tower = Tower.new
	end

	def create
		@tower = Tower.new(tower_params)
		@tower.save
		redirect_to towers_path
		#puts tweet_params
	end

	def edit
		@tower = Tower.find(params[:id])
	end

	def update
		@tower = Tower.find(params[:id])
		@tower.update(tower_params)
		redirect_to towers_path #si coloco tower_path, se ira a la vista show, pero como no la necesito lo coloco en plural para que se me vaya a la vistad de todas las torres
	end

	def destroy
		@tower = Tower.find(params[:id])
		@tower.destroy
		redirect_to towers_path
	end
	
	def tower_params
		params.require(:tower).permit(:name, :keeper)
	end

end
