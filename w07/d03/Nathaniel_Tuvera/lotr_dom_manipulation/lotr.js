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

// #1

function makeMiddleEarth(lands){
  var midEarth = $('<section>').attr('id', 'middle-earth');
  $('body').append(midEarth);
  for (var i = 0; i < lands.length; i++){
    // var landsArr = []
    // landsArr.push(lands[i])
    var article = $('<article>')
    var artEl = $('<h1>').text(lands[i]);
    var landArt = article.attr('id', lands[i]).append(artEl);
    var madeLands = midEarth.append(landArt);
    console.log(madeLands)
  }
}

makeMiddleEarth(lands);

// #2

function makeHobbits(hobbits) {
  var theShire = $("[id='The Shire']");
  var shireUl = theShire.append($('<ul>').attr('id', 'hobbits'));
    for (var i = 0; i< hobbits.length; i++) {
    var hobbitsLi = $('<li>').text(hobbits[i]);
    hobbitsLi.attr('id', hobbits[i]);
    $("[id='hobbits']").append(hobbitsLi);
  }
}
makeHobbits(hobbits)
// #3

function keepItSecretKeepItSafe() {
  var ring = $('<div>').attr('id', 'the-ring');
    $("[id='Frodo Baggins']").append(ring)

}


// #4

function makeBaddies(baddies) {
  var baddiesUl = $('<ul>').attr('id', 'baddiesUl');
  for (var i = 0; i < baddies.length; i++){
    var baddiesLi = $('<li>').text(baddies[i]);
    $('#Mordor').append(baddiesUl)
    $('#baddiesUl').append(baddiesLi)
  }

}

// #5

function makeBuddies(buddies) {
  var aside = $('<aside>');
  var buddiesUl = $('<ul>').attr('id', 'buddies');
    aside.append(buddiesUl);

    $('body').append(aside);
  for (var i = 0; i < buddies.length; i++) {
    var buddiesLi = $('<li>').text(buddies[i]);
    buddiesUl.append(buddiesLi);
  }
  $("li:contains('Gandalf')").css('backgroundColor','grey')

}

// #6

function leaveTheShire() {
  $('#Rivendell').append($('#hobbits'));
}

// #7

function beautifulStranger() {
  $("li:contains('Strider')").text('Aragon');
}

// #8

function forgeTheFellowShip() {
  $('#Rivendell').append($('#hobbits'));
  $('#Rivendell').append($('#buddies'));
}

// #9

function theBalrog() {
  var gandalfMorph = $("li:contains('Gandalf')")
  gandalfMorph.text("Gandalf the White");
  gandalfMorph.css('backgroundColor','white').css('border','1px grey solid');
}

// #10

function hornOfGondor(){
  $('body').append($('<footer>'));
  alert("The Horn of Gondor has been sounded!");
  $("li:contains('Boromir')").css('text-decoration', 'line-through'); //add set time out?
  $("li:contains('Uruk-hai')").remove();
  $("li:contains('Boromir')").appendTo($('<footer>'))
}

// #11

function itsDangerousToGoAlone(){
  var mtDoom = $('<div>').attr('id', 'mount-doom'); //not visible mt-doom
  $('#Mordor').append(mtDoom);
  $("li:contains('Frodo')").appendTo($('#mount-doom'));
  $("li:contains('Sam')").appendTo($('#mount-doom'));
}

// #12

function weWantsIt() {
  var gollumEl =$ ('<div>').attr('id','gollum');
  $('#mount-doom').append(gollumEl);

}
