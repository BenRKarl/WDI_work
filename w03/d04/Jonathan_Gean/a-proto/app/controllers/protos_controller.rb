class ProtosController < ApplicationController
  def index
    @protos = Proto.all

  end

  def welcome
  end

  def show
    @protos = Proto.all
  end
end
