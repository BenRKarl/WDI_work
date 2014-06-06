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
    // create a section tag with an id of middle-earth
    var earth = $("<section id='middle-earth'>");
    $('body').append(earth);
    // add each land as an article tag
    $(lands).each(function(idx, elem){
      var articLand = $('<article>').addClass(elem).html("<h1>" + elem + "</h1>");
      $(earth).append(articLand);
    })
    // inside each article tag include an h1 with the name of the land
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {

  var hobList = $("<ul id='hobbit-town'>");
  $("article:contains('The Shire')").append(hobList);

  $(hobbits).each(function(idx, elem){
    var hobLitem = $('<li>').html(elem);
    hobList.append(hobLitem);
  })
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
}
makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var ringDiv = $("<div id='the-ring'>");
  $("li:contains('Frodo Baggins')").append(ringDiv);
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}
keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  var baddieList = $("<ul id='baddies'>");
  $("article:contains('Mordor')").append(baddieList);

  $(baddies).each(function(idx, elem){
    var badLitem = $('<li>').html(elem);
    baddieList.append(badLitem);
  })
  // display an unordered list of baddies in Mordor
}
makeBaddies(baddies);
function makeBuddies(buddies) {
  var budsAside = $("<aside id='friendos'>");
  $('body').append(budsAside);

  var friendList = $("<ul id='buddies'>");
  $(budsAside).append(friendList);

  $(buddies).each(function(idx, elem){
    var friendLitem = $('<li>').html(elem);
    friendList.append(friendLitem);
  })
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
}
makeBuddies(buddies);
$("li:contains('Gandalf')").css("background-color","grey");

function leaveTheShire() {

var rivenHobbits = $("<ul id='riven_hobbits'>");
$("article:contains('Rivendell')").append(rivenHobbits);
$("#hobbit-town").empty();
$(hobbits).each(function(idx, elem){
    var rivHobLitem = $('<li>').html(elem);
    rivenHobbits.append(rivHobLitem);
  })
  // assemble the hobbits and move them to Rivendell
}
leaveTheShire()

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $("li:contains('Strider')").html("Aragorn");
}
beautifulStranger();
function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}

