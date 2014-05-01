require "pry"
require_relative "postcard"
require_relative "mailbox"

puts "Where are you sending the postcard?"
address = gets.chomp

puts "What is your message?"
message = gets.chomp

postcard = Postcard.new(address, message)

puts postcard.to_s

puts "Ok, I'm going to put it in the mailbox for you."

mailbox = Mailbox.new

mailbox.accept_postcard(postcard)

puts mailbox.to_s

Binding.pry