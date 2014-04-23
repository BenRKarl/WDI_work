def get_int_values
  [gets, gets].map{ |s| s.chomp.to_i }
end

puts "Would you like to [add], [multiply], or [subtract]?"
response = gets.chomp

case response.downcase!

when 'add'
  puts "Which numbers would you like to add?"
  operator = :+
end
