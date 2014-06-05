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
  $('body').append($('<section>').attr("id", "middle-earth"))
  // add each land as an article tag
  for (var i = 0; i < lands.length; i++) {
    $('section').append($('<article>').html(lands[i]));
  }
  // inside each article tag include an h1 with the name of the land
  // Whaaaat...
  for (var i = 1; i < (lands.length+1); i++){
    $('article:nth-of-type('+i+')').append( $('<h1>').html(lands[i-1]));
  }
}

makeMiddleEarth(lands);


///////////////////////////////////////////////////////////////////////
function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  $('body').append($('<ul>').attr("id", "hobbit-list"));

  for (var i = 0; i < hobbits.length; i++) {
    $('#hobbit-list').append($('<li>').html(hobbits[i]));
  }
  // give each hobbit a class of hobbit
  $('ul li').addClass('hobbit');
}

makeHobbits(hobbits);
///////////////////////////////////////////////////////////////////////

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var div = $('<div>').attr("id", "the-ring");
  // add the ring as a child of Frodo
  // ************* doesn't work yet*
  $('li:contains(Frodo)').append(div);

}
keepItSecretKeepItSafe();


///////////////////////////////////////////////////////////////////////

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  $('body').append($('<ul>').attr("id", "baddies-list"));
  for (var i = 0; i < baddies.length; i++) {
    $('#baddies-list').append($('<li>').html(baddies[i]));
  }
}

makeBaddies(baddies);
///////////////////////////////////////////////////////////////////////

function makeBuddies(buddies) {
  // create an aside tag
  $('body').append($('<aside>').attr("id", "aside"));
  // display an unordered list of buddies in the aside
  $('body').append($('<ul>').attr("id", "buddies-list"));

  for (var i = 0; i < buddies.length; i++) {
    $('#buddies-list').append($('<li>').html(buddies[i]));
  }

  $('#aside').append($('#buddies-list'));
  // Make the Gandalf text node have a grey background
  $('li:contains(Gandalf)').css("background-color", "grey");
}

makeBuddies(buddies);


///////////////////////////////////////////////////////////////////////


function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  $('article:contains(Rivendell)').append($('#hobbit-list'));
}

leaveTheShire();

///////////////////////////////////////////////////////////////////////


function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $('li:contains(Strider)').html('Aragorn');
}

beautifulStranger();

///////////////////////////////////////////////////////////////////////


function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $('article:contains(Rivendell)').append($('#buddies-list'));
  // create a new div called 'the-fellowship'
  $('body').append($('<div>').attr('id', 'the-fellowship'));
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
  for (var i = 0; i < hobbits.length; i++) {
    $('#the-fellowship').append(hobbits[i]);
    window.alert(hobbits[i]+"has joined your party.");
  }

  for (var i = 0; i < buddies.length; i++) {
    $('#the-fellowship').append(buddies[i]);
    window.alert(buddies[i]+"has joined your party.");
  }

}

forgeTheFellowShip();

///////////////////////////////////////////////////////////////////////


function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  $('li:contains(Gandalf)').html("Gandalf the White");
  // apply style to the element
  $('li:contains(Gandalf)').css("font-family", "Helvetica");
  // make the background 'white', add a grey border
  $('li:contains(Gandalf)').css("border", "5px solid gray");
  $('li:contains(Gandalf)').css("background-color", "white");

}

theBalrog();

///////////////////////////////////////////////////////////////////////

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  window.alert('The Horn of Gondor has been blown!!');
  // Boromir's been killed by the Uruk-hai!
  window.alert('Boromir has been slain by the Uruk-hai!');
  // put a linethrough on boromir's name
  $('li:contains(Boromir)').css("text-decoration", "line-through");
  // Remove the Uruk-Hai from the Baddies on the page
  $('li:contains(Uruk-Hai)').remove();
  // Remove Boromir from the Fellowship
  $('li:contains(Boromir)').remove();
  // Put Boromir in the Footer
  $('body').append($('<footer>'));
  $('footer').html(buddies[4]);
}
hornOfGondor();

///////////////////////////////////////////////////////////////////////

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  $('#the-fellowship:first-child').remove();
  $('#the-fellowship:nth-child(2)').remove();
  $('#middle-earth:last-child').append($('#hobbit-list:nth-child(1)'));
  $('#middle-earth:last-child').append($('#hobbit-list:nth-child(2)'));
  // add a div with an id of 'mount-doom' to Mordor
  $('#middle-earth:last-child').append($('<div>').attr('id', 'mount-doom'));
}

itsDangerousToGoAlone();
///////////////////////////////////////////////////////////////////////
// Can't select Mordor??
function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  $('#middle-earth:last-child').append($('<div>').attr('id', 'gollum'));
  // Remove the ring from Frodo and give it to Gollum
  $('#gollum').append($('#the-ring'));
  // Move Gollum into Mount Doom
  $('#middle-earth:last-child').append($('#gollum'));
}
weWantsIt();
// Also not working..
function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  $('#gollum').remove();
  // remove all the baddies from the document
  $('#baddies-list').remove();
  // Move all the hobbits back to the shire
  $('#middle-earth:first-child').append($('#hobbit-list'));
}

thereAndBackAgain();
