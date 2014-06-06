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

var lands =["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands){
  var middleEarth = $('<section>').attr('id', 'middleEarth');
  for (var i = lands.length - 1; i >= 0; i--) {
    lands[i] = $('<article>').html('<h1>' + lands[i] +'</h1>');
    $('#middleEarth').append(lands[i]);
  };
}


