Planet.delete_all

# Solar system

earth = Planet.create({name: 'Earth', image_url: 'http://www.globethics.net/image/organization_logo?img_id=13464401',
  diameter: 12600, mass: 5972, life: true})

mars = Planet.create({name: 'Mars', image_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Water_ice_clouds_hanging_above_Tharsis_PIA02653_black_background.jpg/600px-Water_ice_clouds_hanging_above_Tharsis_PIA02653_black_background.jpg',
  diameter: 6800, mass: 641, life: false})

mercury = Planet.create({name: 'Mercury', image_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Mercury_in_color_-_Prockter07_centered.jpg/605px-Mercury_in_color_-_Prockter07_centered.jpg',
  diameter: 5000, mass: 330, life: false})

venus = Planet.create({name: 'Venus', image_url: 'http://i.space.com/images/i/000/000/124/i02/071127-venus-surface-02.jpg?1288046923',
  diameter: 12000, mass: 4867, life: false})

jupiter = Planet.create({name: 'Jupiter', image_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Jupiter_by_Cassini-Huygens.jpg/622px-Jupiter_by_Cassini-Huygens.jpg',
  diameter: 140000, mass: 1898600, life: false})

sun = Planet.create({name: 'Sun', image_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/The_Sun_by_the_Atmospheric_Imaging_Assembly_of_NASA%27s_Solar_Dynamics_Observatory_-_20100819.jpg/628px-The_Sun_by_the_Atmospheric_Imaging_Assembly_of_NASA%27s_Solar_Dynamics_Observatory_-_20100819.jpg',
  diameter: 1_392_684, mass: 1898600, life: false})

