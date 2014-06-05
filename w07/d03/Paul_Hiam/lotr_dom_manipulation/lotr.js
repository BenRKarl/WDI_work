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
      var articLand = $('<article>').html("<h1>" + elem + "</h1>");
      $(earth).append(articLand);
    })
    // inside each article tag include an h1 with the name of the land
}

makeMiddleEarth(lands);



