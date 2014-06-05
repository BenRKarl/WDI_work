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

function makeMiddleEarth(lands){
  var middleEarth = $('<section>').addClass('middle-earth');
  for (var i = 0; i < lands.length; i++) {
    var newLand = $('article')
    var landName = $('<h1>').html(lands[i]);
    $(newLand).append(landName);
  }
  $('body').append(middleEarth);
}

makeMiddleEarth(lands);

function makeHobbits(hobbits){
  var hobbitList = $('<ul>');
  for (var i = 0; i < hobbits.length; i++) {
    var newHobbit = $('<li>').addClass('hobbit');
    $(newHobbit).html(hobbits[i]);
    $(hobbitList).append(newHobbit);
  }
  $('body').append(hobbitList);

}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var theRing = $('<div>').addClass('the-ring');
  var frodo = $('li:contains("frodo")');
  $(frodo).appendChild(theRing);
}

keepItSecretKeepItSafe();

function makeBaddies(baddies){
  var baddiesList = $('<ul>');
  for (var i = 0; i < baddies.length; i++){
    var newBaddies = $('<li>')
    $(newBaddies).html(baddies[i]);
    $(baddiesList).append(newBaddies)
  }
  $('body').append(baddiesList);
}
makeBaddies();

function makeBuddies(buddies) {
 var createBuddies = $('<asisde>');
 var buddiesList = ('<ul>');
 $(aside).append(buddiesList);
for (var i = 0; i < buddies.length; i++){
  var newBuddy = $('<li>').html(buddies);
  $(buddiesList).append(newBuddy);
}
$('body').append(aside);
var gandalf = $('li:contains("Gandalf")');
gandalf.css("background-color", "grey")
}

makeBuddies(buddies);

function leaveTheShire(){
  var hobbits = $(".hobbits");
  var rivendell = $("article:contains('Rivendell')");
  $(rivendell).append(hobbits);
}

leaveTheShire();

function beautifulStranger() {
  var theKing = $("li:contains('strider')");
  theKing.html('Aragon');
}

beautifulStranger();

  function forgeTheFellowShip() {
    leaveTheShire();
    var theFellowship = $('<div>');
    var rivendell = $("article:contains('Rivendell')")
    $(rivendell).append(theFellowship)
    var frodo = $("li:contains('Frodo')");
    var sam = $("li:contains('Samwise')");
    var merry = $("li:contains('Meriadoc')");
    var pippin = $("li:contains('Peregrin')");
    var gandalf = $("li:contains('Gandalf')");
    var legolas = $("li:contains('Legolas')");
    var gimli = $("li:contains('Gimli')");
    var aragorn = $("li:contains('Aragorn')");
    var loser = $("li:contains('Boromir')");
    theFellowship.append(frodo);
  // ("Frodo has joined the Fellowship");
  theFellowship.append(sam);
  // ("Sam has joined the Fellowship");
  theFellowship.append(merry);
  // ("Merry has joined the Fellowship");
  theFellowship.append(pippin);
  // ("Pippin has joined the Fellowship");
  theFellowship.append(gandalf);
  // ("Gandalf has joined the Fellowship");
  theFellowship.append(legolas);
  // ("Legolas has joined the Fellowship");
  theFellowship.append(gimli);
  // alert("Gimli has joined the Fellowship");
  theFellowship.append(aragorn);
  // alert("Aragon has joined the Fellowship");
  theFellowship.append(loser)
  // alert("Boromir has joined the Fellowship");
}


function theBalrog() {
  var gandalf = $("li:contains('Gandalf')");
  $(gandalf).text('Gandalf the White')
  .css('background-color', 'white')
  .css('border', '1px solid grey')
}
