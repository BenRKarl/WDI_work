10.times do
  Kitten.create({
    url: "http://placekitten.com/#{rand(100..500)}/#{rand(100..500)}"
    })
end
