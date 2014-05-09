class ProtosController <ApplicationController
	def index
		@protos = Proto.all
	end
	def welcome
		@message = 'Welcome Protos!'
	end
	def show
		@proto = Proto.find_by_id(params[:id])
	end
end