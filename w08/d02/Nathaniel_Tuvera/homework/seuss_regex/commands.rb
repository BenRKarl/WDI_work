text.scan(/(Sam)[^-]/).count

arr   = text.scan(/not eat.*/\b)
arr2  = arr.map { |name| name.split }
list  = arr2.map { |name| name.pop }

# test = text.scan(/Sam-I-[aA]m/)
# test2 = test.each {|name| name.gsub('Sam-I-am', 'Sammy Jam')}
text.gsub(/Sam-I-[aA]m/, 'Sammy Jam')

arr   = text.scan(/.*will eat.*/)
arr2  = arr.map { |name| name.split }
list  = arr2.map { |name| name }

text.gsub(/Sam/,'Matt')
text.gsub(/Sam-I-[aA]m/, 'Matt-I-Say')
text.gsub(/[gG]reen[ ]\w{4}[ ]\w{3}[ ]\w{3}/i, 'coconut oil and lamb')


# name_arr2 = name_arr.each { |name| name.gsub!("Sam-I-am", "Sammy Jam") }

# text.scan(/.*will eat.*/)




# list = arr2.map do |name|
#     name.pop
#   end
# arr2 = arr.map do |name|
#         text.scan(/.*not eat.*/).split
#       end

