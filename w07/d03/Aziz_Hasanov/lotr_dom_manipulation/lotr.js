var hobbits = [
"Frodo Baggins",
"Samwise 'Sam' Gamgee",
"Meriadoc \"Merry\" Brandybuck",
"Peregrin 'Pippin' Took"
];

var buddies = [
"Gandalf the Grey",
"Legolas",
"Gimli",
"Strider",
"Boromir"
];

var baddies = [
"Sauron",
"Saruman", 
"The Uruk-hai", 
"Orcs"
];

var lands = ["The Shire", "Rivendell", "Mordor"];


function makeMiddleEarth(lands) {
  var section = $("<section id='middle-earth'>");
  for(var i = 0; i < lands.length; i++) {
    var land = $("<artile>").html("<h1>" + lands[i]);
    $("body").append(land);
  }
  // create a section tag with an id of middle-earth
  // add each land as an article tag
  // inside each article tag include an h1 with the name of the land
}
// makeMiddleEarth(lands);


function makeHobbits(hobbits) {
  var list = $("<ul>");
  $("body").append(list);
  for (var i = 0; i < hobbits.length; i++) {
    var hobbit = $("<li>").html(hobbits[i]).addClass("hobbit");
    $("ul").append(hobbit);
  }
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
}
// makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  console.log("hi");
  $("<div id='the-ring'>");
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}
// keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  var list = $("<ul>");
  $("body").append(list);
  for (var i = 0; i < baddies.length; i++) {
    var baddie = $("<li>").html(baddies[i]);
    $("ul").append(baddie);
  }
  // display an unordered list of baddies in Mordor
}
// makeBaddies(baddies);

function makeBuddies(buddies) {
  var aside = $("<aside><ul>");
  $("body").append(aside);
  for(var i = 0; i < buddies.length; i++) {
    var buddy = $("<li>").html(buddies[i]);
    $("ul").append(buddy);
    console.log(buddy);
  }
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
}
// makeBuddies(buddies);

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
}
// leaveTheShire();

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
}
// beautifulStranger();


