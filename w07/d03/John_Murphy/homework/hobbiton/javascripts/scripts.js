// Dramatis Personae
$(function(){ //runner


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
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land

  $.each(lands, function(index, value){
    var newLand = $('<article>').html($('<h1>').html(value))
    $('#middle-earth').append(newLand)
  })
}

makeMiddleEarth(lands)

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  $("h1:contains('The Shire')").parent().append($('<ul>').attr('id', 'hobbits'))
  $.each(hobbits, function(index, value){
    $('#hobbits').append($('<li>').html(value).attr('class', 'hobbit'))
  })
}

makeHobbits(hobbits)


function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  $("li:contains('Frodo Baggins')").append($('<div>').attr('id', 'the-ring'))
}

keepItSecretKeepItSafe()

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  $("h1:contains('Mordor')").parent().append($('<ul>').attr('id', 'baddies'))
  $.each(baddies, function(index, value){
    $('#baddies').append($('<li>').html(value).attr('class', 'baddy'))
  })

}
makeBaddies(baddies)

function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background

  $('#buddies-aside').append($('<ul>').attr('id', 'buddies'))
  $.each(buddies, function(index, value){
    $('#buddies').append($('<li>').html(value).attr('class', 'buddy'))
  $("li:contains('Gandalf the Grey')").html($('<span>').html('Gandalf the Grey').css('backgroundColor', 'grey').attr("id","gandalf"))
  })
}
makeBuddies(buddies)

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  $("h1:contains('Rivendell')").parent().append($('#hobbits'))
}
leaveTheShire()
function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $("li:contains('Strider')").html("Aragorn")
}
beautifulStranger()
8

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
  leaveTheShire()
  $("h1:contains('Rivendell')").parent().append($('#buddies'))
  var fellowshipDiv = $('<div>').attr('id', 'the-fellowship').append($('<ul>').attr('id', 'roster'))

  $("h1:contains('Rivendell')").parent().append(fellowshipDiv)

  $.each(($('#hobbits').contents()), function(index, value){
    $('#roster').append(value)
    alert(value.innerText + " has been added to the fellowship.")
  })

  $.each(($('#buddies').contents()), function(index, value){
    $('#roster').append(value)
    if ($("value:contains('Gandalf')").length > 1) {
    alert("Gandalf the Grey has been added to the fellowship.")
    }
    else {
    alert(value.innerText + " has been added to the fellowship.")
    }
  })
}
forgeTheFellowShip()
9

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
  $('#gandalf').css('backgroundColor', 'white').css('border', 'solid grey 2px')
}
theBalrog()
10

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
  alert("The horn of Gondor has been blown!")
  alert("Boromir has been killed by the Uruk-hai!")
  $("li:contains('Boromir')").css('text-decoration', 'line-through')
  $("li:contains('The Uruk-hai')").remove()
  $("#footer").append($("li:contains('Boromir')"))
}

hornOfGondor()
11

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
  $("h1:contains('Mordor')").parent().append($("li:contains('Frodo Baggins')"))
  $("h1:contains('Mordor')").parent().append($("li:contains('Gamgee')"))
  $("h1:contains('Mordor')").parent().append($("<div>").attr('id', 'mount-doom'))
}
itsDangerousToGoAlone()
12

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
  $("h1:contains('Mordor')").parent().append($('<div>').attr('id', 'gollum'))
  $("#gollum").append($('#the-ring'))
  $("#mount-doom").append($("#gollum"))
}
weWantsIt()
13

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
  $("#gollum").remove()
  $("#baddies").remove()
  $("h1:contains('Shire')").parent().append($('#hobbits'))
  $('#hobbits').append($("li:contains('Frodo Baggins')"))
  $('#hobbits').append($("li:contains('Gamgee')"))
  $('#hobbits').append($("li:contains('Took')"))
  $('#hobbits').append($("li:contains('Brandybuck')"))
}
thereAndBackAgain()
}) // end of runner
