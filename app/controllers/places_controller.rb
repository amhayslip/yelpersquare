class PlacesController < ApplicationController

	def show_all
		@places = Place.all

	end

	def show
		@place = Place.find(params[:id])
	end

	def new
		@place = Place.new
	end

	def create
		@place = Place.new(place_params)
		@place.save
		redirect_to root_path
	end

	def edit
		@place = Place.find(params[:id])

	end

	def update
		@place = Place.find(params[:id])
		@place.update(place_params)
		redirect_to root_path
	end

	def destroy
		@place = Place.find(params[:id])
		@place.destroy
		redirect_to root_path
	end

	private
	def place_params
		params.require(:place).permit(:name, :food_type, :price, :image_url, :website, :hours)
	end

end