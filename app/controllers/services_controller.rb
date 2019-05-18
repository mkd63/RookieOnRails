class ServicesController < ApplicationController
	def new

	end
	def create
		@service = Service.new(service_params)

		if @service.save
    		redirect_to @service
  		else
    		render 'new'
  		end
		redirect_to @service
	end
	def show
		@service = Service.find(params[:id])
	end

	private
	def service_params
		params.require(:service).permit(:name, :email, :message)
	end
end
