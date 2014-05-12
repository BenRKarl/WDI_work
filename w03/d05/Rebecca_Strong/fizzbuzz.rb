


1.upto(100) do |i|
if i % 3 = 0 && i % 5 == 0
puts "fizzbuzz"
elsif i % 3 == 0
  puts"fizz"
  elsifi % 5 == 0
  puts "buzz"
else
  puts i
end

# Carlos' solution
i = 0
while i < 100
  if i % 15 == 0
    puts "fizzbuzz"
  elsif i % 3 ==0
    puts "fizz"
  elsif i % 5 == 0
    puts "buzz"
  else puts i
  end
    i += 1
  end


# Jeff W's solution builds a string don't need to copy and paste into pry to test.
1.upto(100) do |i|
  string = ""
  string +="fizz" if i % 3 == 0
  string += "buzz" if i % 5 == 0
  string = i if string == ""
  # ie if none of the above is equal to true (0) then runs an empty string ""
  puts string
end



# def find_multiples(x)
#   arr = (1..1000).to_a
#   arr.select{|num| num % x == 0}
# end

get '/:num' do

#   num = params[:sample_size].to_i
#   arr = (1..num).to_a
#   @arr = find_multiples(params[:num].to_i)
#   erb :index

# end
