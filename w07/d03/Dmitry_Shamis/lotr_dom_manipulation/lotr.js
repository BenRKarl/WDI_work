  console.log("Sam should've took it!");

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
    var middleEarth = $('<section>').addClass('middle-earth');
    for (var i = 0; i < lands.length; i++) {
      var newLand = $('<article>')
      var landTitle = $('<h1>').html(lands[i]);
      $(newLand).append(landTitle);
      $(middleEarth).append(newLand);
    }
    $('body').append(middleEarth);
  }

  makeMiddleEarth(lands);

  function makeHobbits(hobbits) {
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
    var theRing = $('<div>').attr('id', 'the-ring');
    var frodo = $("li:contains('Frodo')");
    $(frodo).append(theRing);
  }

  keepItSecretKeepItSafe();

  function makeBaddies(baddies) {
    var baddiesList = $('<ul>');
    for (var i = 0; i < baddies.length; i++) {
      var newBaddie = $('<li>').html(baddies[i]);
      $(baddiesList).append(newBaddie)
    }
    $('body').append(baddiesList);
  }

  makeBaddies(baddies);

  function makeBuddies(buddies) {
    var aside = $('<aside>');
    var buddiesList = $('<ul>');
    $(aside).append(buddiesList);
    for (var i = 0; i < buddies.length; i++) {
      var newBuddy = $('<li>').html(buddies[i]);
      $(buddiesList).append(newBuddy);
    }
    $('body').append(aside);
    var gandalfTheGrey = $("li:contains('Gandalf')");
    gandalfTheGrey.css('background-color', 'grey')
  }

  makeBuddies(buddies);

  function leaveTheShire() {
    var hobbits = $('.hobbit');
    var rivendell = $("article:contains('Rivendell')");
    $(rivendell).append(hobbits);
  }

  leaveTheShire()

  function beautifulStranger() {
    var theKing = $("li:contains('Strider')");
    theKing.html('Aragorn');
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
  // alert("Frodo has joined the Fellowship");
  theFellowship.append(sam);
  // alert("Sam has joined the Fellowship");
  theFellowship.append(merry);
  // alert("Merry has joined the Fellowship");
  theFellowship.append(pippin);
  // alert("Pippin has joined the Fellowship");
  theFellowship.append(gandalf);
  // alert("Gandalf has joined the Fellowship");
  theFellowship.append(legolas);
  // alert("You have my bow");
  theFellowship.append(gimli);
  // alert("And my axe");
  theFellowship.append(aragorn);
  // alert("You have my sword");
  theFellowship.append(loser)
  // alert("Boromir has joined the Fellowship");
}

forgeTheFellowShip()

function theBalrog() {
  var gandalf = $("li:contains('Gandalf')");
  $(gandalf).text('Gandalf the White')
  .css('background-color', 'white')
  .css('border', '1px solid grey')
}

theBalrog();

function hornOfGondor() {
  // alert("The horn of Gondor has been blown!");
  var boromir = $("li:contains('Boromir')");
  $(boromir).css('text-decoration', 'line-through');
  var urukHai = $("li:contains('Uruk')");
  $(urukHai).remove()
  $('body').append(boromir)
}

hornOfGondor()

function itsDangerousToGoAlone(){
  var frodo = $("li:contains('Frodo')");
  var sam = $("li:contains('Samwise')");
  var mordor = $("article:contains('Mordor')");
  $(mordor).append(frodo).append(sam)
  $(mordor).append('<div>').attr('id', 'mount-doom')
}

itsDangerousToGoAlone()

function weWantsIt() {
  var gollum = $('<div>').attr('id', 'gollum');
  $(gollum).append('#the-ring');
  $('#mount-doom').append(gollum);
}

weWantsIt()

function thereAndBackAgain() {
  $('#gollum').remove();
  var sauron = $("li:contains('Sauron')");
  var saruman = $("li:contains('Saruman')");
  var orcs = $("li:contains('Orcs')");
  $(sauron).remove();
  $(saruman).remove();
  $(orcs).remove();
  var frodo = $("li:contains('Frodo')");
  var sam = $("li:contains('Samwise')");
  var merry = $("li:contains('Meriadoc')");
  var pippin = $("li:contains('Peregrin')");
  var shire = $("article:contains('Shire')")
  shire.append(frodo).append(sam).append(merry).append(pippin);
}

thereAndBackAgain()
