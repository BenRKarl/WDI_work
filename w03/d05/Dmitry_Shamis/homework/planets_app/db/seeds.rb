Planet.delete_all

planets = [
  {'name' => 'Mercury',
    'image_url' => 'http://upload.wikimedia.org/wikipedia/commons/3/3f/Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg',
    'diameter' => 4880,
    'mass' => 330220,
    'life' => false},
  {'name' => 'Venus',
    'image_url' => 'http://upload.wikimedia.org/wikipedia/commons/8/85/Venus_globe.jpg',
    'diameter' => 12092,
    'mass' => 4867600,
    'life' => false},
  {'name' => 'Earth',
    'image_url' => 'http://upload.wikimedia.org/wikipedia/commons/6/6f/Earth_Eastern_Hemisphere.jpg',
    'diameter' => 12742,
    'mass' => 5972190,
    'life' => true}
]

planets.each do |planet|
  Planet.create(
    name: planet['name'],
    image_url: planet['image_url'],
    diameter: planet['diameter'],
    mass: planet['mass'],
    life: planet['life']
    )
end
