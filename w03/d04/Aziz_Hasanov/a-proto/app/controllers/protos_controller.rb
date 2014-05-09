class ProtosController < ApplicationController
	def index
		@protos = Proto.all
	end
	def main
		@protos = Proto.all
	end
	def show
		@protos = Proto.find(params[:id])
	end
end