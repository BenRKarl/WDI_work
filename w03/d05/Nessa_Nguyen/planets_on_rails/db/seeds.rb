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

moon = Planet.create({name: 'Moon', image_url: 'http://upload.wikimedia.org/wikipedia/commons/e/e1/FullMoon2010.jpg',
  diameter: 3400, mass: 73, life: false})

sun = Planet.create({name: 'Sun', image_url: 'http://thenypost.files.wordpress.com/2013/12/sun.jpg',
  diameter: 1_392_684, mass: 1988 * 10**6, life: false})

Planet.create({name: 'Saturn', image_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Saturn_PIA06077.jpg/800px-Saturn_PIA06077.jpg',
  diameter: 106000, mass: 568460, life: false})

Planet.create({name: 'Uranus', image_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Uranus2.jpg/600px-Uranus2.jpg',
  diameter: 50000, mass: 86810, life: false})

Planet.create({name: 'Neptune', image_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Neptune.jpg/609px-Neptune.jpg',
  diameter: 49000, mass: 102430, life: false})

Planet.create({name: 'Pluto', image_url: 'http://upload.wikimedia.org/wikipedia/commons/9/91/Pluto_animiert_200px.gif',
  diameter: 2360, mass: 13, life: false})
