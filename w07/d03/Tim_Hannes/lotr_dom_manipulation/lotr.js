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


//1

var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
    $('body').append('<section id="middle-earth">');
    // create a section tag with an id of middle-earth

    $.each(lands, function(idx, value){
      $("#middle-earth").append("<article>" + value + "</aricle>")
    });
    // add each land as an article tag

    // $.each(lands, function(idx, value){
    //   $.each('article').append("<h1>" + value + "</h1>")
    // })
    // inside each article tag include an h1 with the name of the land
}

makeMiddleEarth(lands);

//2
function makeHobbits(hobbits) {
  $.each(hobbits, function(idx, value){
    $('body').append("<li>" + value + "</li>")
  });
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
}
