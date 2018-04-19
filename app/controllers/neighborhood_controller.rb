class NeighborhoodController < ApplicationController
	def index
		render json: Neighborhood.all
	end

	def getNeighborhoodsByCity
		@neighborhoods = Neighborhood.where(city_id: params[:city_id])
		render json: @neighborhoods
	end

	#only used for nyc neighborhoods
	def getNeighborhoodsByBorough
		@neighborhoods = Neighborhood.where(borough: params[:borough])
		render json: @neighborhoods
	end
end
