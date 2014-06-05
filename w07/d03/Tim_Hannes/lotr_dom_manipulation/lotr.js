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

    $.each(lands, function(idx, value){
      $.each('article').append("<h1>" + value + "</h1>")
    })
    // inside each article tag include an h1 with the name of the land
}

makeMiddleEarth(lands);

//2
var indexNum = 0;

function makeHobbits(hobbits) {
    for (i = 0; i < hobbits.length; i++){
      document.write('<li>' + hobbits[indexNum++] + '</li>')
    }
    $.each(hobbits, function(idx, value){
      $("#the-shire ul").append("<li>" + value + "</li>")
    });
  // display an unordered list of hobbits in the shire

    $("#the-shire li").addclass("hobbit");
  // give each hobbit a class of hobbit
}

//3

function keepItSecretKeepItSafe() {
  $('body').append('<div id="the-ring">');
  // create a div with an id of 'the-ring'
  document.getElementById("the-ring").appendChild("hobbits[0]");
  // add the ring as a child of Frodo
}

//4
var list = $('<ul/>');
$('body').append(list);

function makeBaddies(baddies) {
  // $.each(baddies, value){
  //   $('<li/>', {text: index + value}).appendTo(list);
  // };
    // display an unordered list of baddies in Mordor
}

//5
function makeBuddies(buddies) {
  $('body').append('<aside>');
  // create an aside tag

  for (i = 0; i < buddies.length; i++){
      document.write('<li>' + buddies[indexNum++] + '</li>')
    }
  // display an unordered list of buddies in the aside

  $("ul li").each(function() {
     $(buddies[0]).css("background","grey");
  });
  // Make the Gandalf text node have a grey background
}


//6
function leaveTheShire() {
  hobbits.all
  // assemble the hobbits and move them to Rivendell
}

//7
function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
}

//8
function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $('body').append('<div id="the-fellowship">');
  // create a new div called 'the-fellowship'
  // $("")
  //   .appendTo("#the-fellowship");
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}

//9
function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  $('buddies[0]').css( "backgroundColor", 'white');
  // apply style to the element
  // make the background 'white', add a grey border
}

//10
function hornOfGondor() {
  window.onload = function() {
    alert( "The horn of Gandor has been blown" );
  }
  // pop up an alert that the horn of gondor has been blown

  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  $("body").filter(":contains('Uruk-Hai')").remove();
  // Remove the Uruk-Hai from the Baddies on the page
  $("body").filter(":contains('Boromir')").remove();
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}

//11
// function itsDangerousToGoAlone(){
//   // take Frodo and Sam out of the fellowship and move them to Mordor
  // var theDiv = document.getElementById("<#mordor>");
  // theDiv.innerHTML += "<div id="mount-doom">";
//   // add a div with an id of 'mount-doom' to Mordor
// }

//12
function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}

//13
function thereAndBackAgain() {
  $("div").filter(":contains('Gollum')").remove();
  $("div").filter(":contains('the Ring')").remove();
  // remove Gollum and the Ring from the document

  $("div").filter(":contains('Sauron','Saruman','The Uruk-hai','Orcs')").remove();
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}
