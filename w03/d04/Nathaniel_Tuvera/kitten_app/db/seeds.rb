kittens = {}

kittens.each {|width, height| Kitten.create({width: width, height: height})}
