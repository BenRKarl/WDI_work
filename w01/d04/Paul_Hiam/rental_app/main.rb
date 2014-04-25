require 'pry'
require_relative 'apartment'
require_relative 'building'
require_relative 'person'
def run
	puts 'what would u like to manage?:'
	puts "(input one: 'buildings'; 'apartments' ; 'tenants'"
	session = gets.chomp
end

binding.pry