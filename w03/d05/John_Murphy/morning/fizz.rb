# count = 0
# while count < 101
#   if count % 5 == 0 && count % 3 == 0
#     puts 'FizzBuzz'
#   elsif count % 5 == 0
#     puts 'Buzz'
#   elsif count % 3 == 0
#     puts "Fizz"
#   else
#     puts count
#   end
#     count+=1
# end



# (1..100).to_a.each do |num|
#   if num % 5 == 0 && num % 3 == 0
#     puts 'FizzBuzz'
#   elsif num % 5 == 0
#     puts 'Buzz'
#   elsif num % 3 == 0
#     puts "Fizz"
#   else
#     puts num
#   end
# end


# (1..100).to_a.each do |num|
#   output = ""
#    if num % 3 == 0
#     output << "Fizz"
#   end
#   if num % 5 == 0
#     output << 'Buzz'
#  end
#  if output.empty?
#     output << num.to_s
#   end
#   puts output
# end

# 1.upto(100) do |i|
#   if i % 15 == 0
#     puts 'Fizzbuzz'
#   elsif i % 3 == 0
#     puts 'Fizz'
#   elsif i % 5 == 0
#     puts 'Buzz'
#   else
#     puts i
#   end
# end

1.upto(100) do |i|
  string = ""
  string += "Fizz" if i % 3 == 0
  string += "Buzz" if i % 5 == 0
  string = i if string == ""
  puts string
end

