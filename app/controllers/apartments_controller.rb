class ApartmentsController < ApplicationController
	def index
		@apartment = Apartment.all
	end

	def new
		@apartment = Apartment.new
	end

	def create
		@apartment = Apartment.new(apartment_params)
		@apartment.save
		redirect_to apartments_path
		#puts apartment_params
	end

	def edit
		@apartment = Apartment.find(params[:id])
	end

	def update
		@apartment = Apartment.find(params[:id])
		@apartment.update(apartment_params)
		redirect_to apartments_path #si coloco apartment_path, se ira a la vista show (vista de un solo apartment), pero como no la necesito lo coloco en plural para que se me vaya a la vistad de todas las torres
	end

	def destroy
		@apartment = Apartment.find(params[:id])
		@apartment.destroy
		redirect_to apartments_path
	end
	
	def apartment_params
		params.require(:apartment).permit(:number, :floor, :tower, :inhabitants)
	end

end
