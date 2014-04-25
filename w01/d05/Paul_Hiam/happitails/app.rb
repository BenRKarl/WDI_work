require_relative "shelter"
require_relative "client"
require_relative "animal"
require 'pry'

quit = " "
while quit != "q"
    def menu
      puts "menu: work with \n-(a)nimals \n-(c)lients \n-(q)uit"
  	
  	  session = gets.chomp[0].downcase
  	    if session == "q"
  		  quit = "q"

  		elsif session == "c"
  			clients
  		elsif session == "a"
  			animals
  		else 
  			puts "re-type"
  			menu
    	end
    end	

    def animals
    	puts "menu: \n-(v)iew animals \n-(a)dd animals \-(b)ack"
    	doing = gets.chomp[0].downcase
    	if doing == 'v'
    		puts 'beta'
    		animals

    	elsif doing == 'a'
    		puts 'beta'
    		animals
    	elsif doing == 'b'
    		menu	
    	else
    		puts '?'
    		animals
    	end

    end

    def clients
    	puts "clients here"
    end

  menu  
  quit = "q"
end


binding.pry