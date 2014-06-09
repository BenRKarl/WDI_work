class KittensController < ActionController::Base
 <% @kittens.each do |kitten| %>
	@kittens = Kitten.all
	end 
	end
  protect_from_forgery with: :exception
end
