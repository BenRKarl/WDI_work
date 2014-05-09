class ProtosController < ApplicationController
	def welcome

	end

	def index
		@protos = Proto.all
	end

	def show
		id = params[:id].to_i
		@proto = Proto.find(id)
	end
end

