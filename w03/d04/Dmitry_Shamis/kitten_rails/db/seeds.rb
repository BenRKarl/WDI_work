kittens = [
  {"width" => 300, "height" => 350},
  {"width" => 400, "height" => 400}
]

kittens.each do |kitten|
  Kitten.create(width: kitten['width'], height: kitten['height'])
end
