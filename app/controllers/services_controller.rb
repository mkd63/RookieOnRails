class ServicesController < ApplicationController
	def index
		@services=Service.all
	end
	def new

	end
	def create
		@service = Service.new(service_params)

		if @service.save
    		redirect_to @service
  		else
    		render 'new'
  		end
	end
	def show
		@service = Service.find(params[:id])
	end

	private
	def service_params
		params.require(:service).permit(:name, :email, :message)
	end
end
