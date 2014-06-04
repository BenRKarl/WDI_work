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
  var buddiesUl = $('<ul>').attr('id', 'buddiesUl');
  for (var i = 0; i < buddies.length; i++) {
    var buddiesLi = $('<li>').text(buddies[i]);
    // $('body').append(buddiesUl);
    $('#buddiesUl').append(buddiesLi);
    $("li:contains('Gandalf')").css('backgroundColor','grey')
  }
}

