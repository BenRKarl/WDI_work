


100.times do

  width = rand(100..400)
  height = rand(100..400)
  Kitten.create({width: width, height: height})

end
