# !/usr/bin/env ruby -wKU'
require 'animal.rb'
require 'client.rb'

class Shelter
attr_accessor :shelter, :animal, :clients

def initialize(shelter, animal, clients)
  @shelter = shelter
  @animal = animal
  @clients = clients
  #@clients = clients
end

def self.create(params)
  @name = params[:name]
  @age  = params[:age]
end
