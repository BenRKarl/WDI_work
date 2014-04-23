problem = false
print "Good to go!" unless problem
then print "hmmm..."
end

print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
end

puts "Your string is: #{user_input}"





print "say something"
user_input = gets.chomp()
user_input.downcase!

if user_input.include? "s"
    print "found s!"
end









print "say something"
user_input = gets.chomp()
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    print "I cant find no s\n"
    end






print "say something"
user_input = gets.chomp()
puts "you said: #{user_input}\n"
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    print "I cant find no s\n"
    end






print "say something"
user_input = gets.chomp()
puts "you said: #{user_input}\n"
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    print "type something again with an 's'"
end

user_input2 = gets.chomp()

if user_input2.include? "s"
    user_input2.gsub!(/s/, "th")
else
    print "cmon dude. really?"
end





counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end






counter = 1
while counter < 11
  puts counter
  counter += 1
end




for num in 1...10
  puts num
end



i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end






array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end


object.each { |item| # Do something }


object.each do |item| # Do something end











i = 20
loop do
  i -= 1
 next if i % 2 > 0
  print "#{i}"
  break if i <= 0
end







odds = [1,3,5,7,9]

odds.each do |holder|
 holder_new = holder*2
 print "#{holder_new}"
 end


firstnamelife.each do |find_bumb|
  if find_bumb == Bumblebee
    print "yahoo"
  end





  i = 1
while i <= 50 do
    print i
    i += 1
end


i = 1
until i > 50 do
    print i
    i += 1
end


i = 1
for i in 1..50
    print i
    i += 1
end




m = 0
loop do
m += 1
print "Ruby!"
break if m == 30
end


30.times { print "Ruby!" }



puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end






words = text.split(" ")






words = ['apple', 'banana', 'carrot', 'dinner']
words.each do |word|
  print word
end







words = ['apple', 'banana', 'carrot', 'dinner']
words.each do |word|
  print word + " "
end



if var == 10
   print "Variable is 10"
else
   print "Variable is something else"
end




demo_array = [100, 200, 300, 400, 500]

print  demo_array[2]







multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }





my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]



pets = Hash.new




pets = Hash.new
pets["Chance"] = "dog"

pets2 = {
    "Stevie" => "my cat"
    "Bowser" => "my hamster"
    "Cubanooo" => "my fish"
}

puts pets[Stevie]
puts pets2[Bowser]




pets["Chance"] = "dog"

pets2 = {
    "Stevie" => "my cat",
    "Bowser" => "my hamster",
    "Cubanooo" => "my fish",
}

puts pets[Chance]
puts pets2[Bowser]










friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }





languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each { |x| puts "#{x}" }




s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]






s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |sub_array|
    sub_array.each do |item|
        puts item
    end
end





secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

restaurant_menu = {
  "noodles" => 4,
  "soup" => 3,
  "salad" => 2
}

restaurant_menu.each do |item, price|
  puts "#{item}: #{price}"
end








languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
languages.each { |x| puts x }


secret_identities = {
  "noodles" => 4,
  "soup" => 3,
  "salad" => 2
}

secret_identities.each do |item, price|
  puts "#{item}: #{price}"
end




my_hash = {
    "hi" => "low",
    "hmm" => "ok",
    "really" => "yep"
}


