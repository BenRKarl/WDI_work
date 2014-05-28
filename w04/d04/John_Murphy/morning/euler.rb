require 'pry'

my = (1...1000).to_a
my.select! {|num| num % 3 == 0 || num % 5 == 0}
sum = 0
my.each {|num| sum += num}


(1...1000).to_a.select! {|num| num % 3 == 0 || num % 5 == 0}.reduce(:+)
