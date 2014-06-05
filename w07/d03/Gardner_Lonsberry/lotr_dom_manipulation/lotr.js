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
  

function createMiddleEarth(lands) {
  var middleEarth = $('<section>').addClass("middle-earth");
  for (var i=0; i < lands.length; i++){
    var newLandArticle = $('<article>');
    var newLandH1 = $('<h1>').html(lands[i]);
    newLandArticle.append(newLandH1);
    worldSection.append(newLandArticle);
  }
  $('body').append(middleEarth);
}
makeMiddleEarth(lands);


// ####### 2 #######
// display an unordered list of hobbits in the shire
// give each hobbit a class of hobbit
// #################

function makeHobbits(hobbits) {
  var hobbitUnorderedList = $('<ul>');
  for (var i = 0; i < hobbits.length; i++) {
    var newHobbit = $('<li>').addClass('hobbit');
    $(newHobbit).html(hobbit[i]);
    $(hobbitUnorderedList).append(newHobbit);
  }
  $('body').append(hobbitList);
}

makeHobbit(hobbits);

// ####### 3 #######
// create a div with an id of 'the-ring'
// add the ring as a child of Frodo
// #################

function keepItSecretKeepItSafe() {
  // var ringDiv = $('<div>').attr('id', 'the-ring');
  var ringDiv = $('<div>').addClass('the-ring');
  var frodo = $('li: contains(Frodo Baggins)');
  frodo.append(ringDiv)
}
keepItSecretKeepItSafe();


// ####### 4 #######
// display an unordered list of baddies in Mordor
// #################

function makeBaddies(baddies){
  var baddiesUl = $('<ul>');
  for (var i = 0; i < baddies.length; i++) {
    var newBaddie = $('<li>').html(baddies[i]);
  }
  $('body').append(baddiesUl);
}
madeBaddies(baddies);


// ####### 5 #######
// create an aside tag
// display an unordered list of buddies in the aside
// Make the Gandalf text node have a grey background
// #################

function makeBuddies(buddies){
  var aside = $('<aside>');
  var buddiesUl = $('<ul>');
  $(aside).append(buddiesList);
  for (var i = 0; i < buddies.length; i++)  {
    var newBuddy = $('<li>').html(buddies[i]);
    $(buddiesUl).append(newBuddy);
  }
  $('body').append(aside);
  var gandalfTheGrey.css('background-color', 'grey')
}
makeBuddies(buddies);

// ####### 6 #######
// assemble the hobbits and move them to Rivendell
// #################

function leaveTheShire() {
  var hobbits = $('.hobbit');
  var rivendell = $("article:contains('Rivendell')");
  $(rivendell).append(hobbits);
}
leaveTheShire;

// ####### 7 #######
 // change the buddy 'Strider' textnode to "Aragorn"
 // #################

function beautifulStranger(){
  $('li:contains(Strider)')
}
function beautifulStranger();
// ####### 8 #######
// move the hobbits and the buddies to Rivendell
// create a new div called 'the-fellowship'
// add each hobbit and buddy one at a time to 'the-fellowship'
// after each character is added make an alert that they have joined your party
// #################

// ####### 9 #######
// change the 'Gandalf' textNode to 'Gandalf the White'
// apply style to the element
// make the background 'white', add a grey border
// #################

// ####### 10 #######
// pop up an alert that the horn of gondor has been blown
// Boromir's been killed by the Uruk-hai!
// put a linethrough on boromir's name
// Remove the Uruk-Hai from the Baddies on the page
// Remove Boromir from the Fellowship
// Put Boromir in the Footer
// ##################

// ####### 11 #######
// take Frodo and Sam out of the fellowship and move them to Mordor
// add a div with an id of 'mount-doom' to Mordor
// ##################

// ####### 12 #######
// Create a div with an id of 'gollum' and add it to Mordor
// Remove the ring from Frodo and give it to Gollum
// Move Gollum into Mount Doom
// ##################

// ####### 13 #######
// remove Gollum and the Ring from the document
// remove all the baddies from the document
// Move all the hobbits back to the shire
// ##################
