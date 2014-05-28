var favorites = ['seahawks', 'pizza', 'sushi', 'bi-bim-bop', 'video games']

function aboutMe() {
  var rand = favorites[Math.floor(Math.random() * favorites.length)];
  console.log(rand + " is one of my favorite things ever!");
}

aboutMe()
aboutMe()
