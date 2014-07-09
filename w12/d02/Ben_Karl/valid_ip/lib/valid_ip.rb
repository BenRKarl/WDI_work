require 'pry'

def valid_ip(string)
  array = string.split('.')
  return false if array.length != 4
  array.each do |num|
    return false if num.to_i > 255
  end
  true
end

valid_ip('123.123.232.123')
valid_ip('123.123.232.1233')
valid_ip('123.123.232.hello')
