class PersonController < ApplicationController
	def index
		render json: Person.all
	end

	def show
		@person = Person.find(params[:person_id])
		render json: @person
	end
end
