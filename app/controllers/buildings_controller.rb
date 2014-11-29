class BuildingsController < ApplicationController
	
	def index
		@buildings = Building.all
	end

	def new
		@building = Building.new
	end

	def buildings_params
		params.require(:building).permit(:name)
	end

	def create
		@building = Building.new(buildings_params)

		if @building.save
			redirect_to buildings_path, :notice => "#{@building.name} is successfully created"
		else
			render "new"
		end

	end

	def edit
		@building = Building.find(params[:id])
	end

	def update
		@building = Building.find(params[:id])

		if @building.update(buildings_params)
			redirect_to buildings_path
		else
			render "edit"

		end
	end
	def show
		@building = Building.find(params[:id])
                #@routers_list = Router.all
		@routers_list = Router.where(:building_name => @building.name)
	end
	def destroy
		Building.find(params[:id]).destroy
		redirect_to buildings_path
	end
end
