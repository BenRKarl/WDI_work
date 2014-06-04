
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
  var middleEarth = $('<section>', {id: 'middle-earth'});
  // add each land as an article tag
  // inside each article tag include an h1 with the name of the land
  $.each(lands, function(index, value) {
    var currArticle = $('<article>', {id: 'land_'+index, html: '<h1>'+value+'</h1>'});
    $(middleEarth).append(currArticle);
  });
  $('body').append(middleEarth);
}

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var landIndex = lands.indexOf("The Shire");
  var shireArticleElement = $('#land_' + landIndex);
  var ulEl = $('<ul>', {id: 'shire-list'});
  $(shireArticleElement).append(ulEl);
  $.each(hobbits, function(index, value){
    // give each hobbit a class of hobbit
    currLi = $('<li>', {class: 'hobbit', text: value});
    $(ulEl).append(currLi);
  });
}


function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var ringDiv = $('<div>', {id: 'the-ring'});
  // add the ring as a child of Frodo
  $(".hobbit:contains('Frodo')").append(ringDiv);
}

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var landIndex = lands.indexOf("Mordor");
  var landArticleElement = $('#land_' + landIndex);
  var ulEl = $('<ul>', {id: 'mordor-list'});
  $(landArticleElement).append(ulEl);
  $.each(baddies, function(index, value){
    var currLi = $('<li>', {class: 'baddie', text: value});
    $(ulEl).append(currLi);
  });
}


function makeBuddies(buddies) {
  // create an aside tag
  var buddyAside = $('<aside>');
  $('body').append(buddyAside);
  // display an unordered list of buddies in the aside
  var ulEl = $('<ul>');
  $(buddyAside).append(ulEl);
  $.each(buddies, function(index, value){
    var currLi = $('<li>', {class: 'buddy', text: value});
    $(ulEl).append(currLi);
  });
  // Make the Gandalf text node have a grey background
  $("li:contains('Gandalf')").css("background-color", "gray");
}

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var zeeHobbits = $('.hobbit');
  var landIndex = lands.indexOf("Rivendell");
  var ulEl = $('<ul>')
  $(ulEl).append(zeeHobbits);
  $('#land_'+landIndex).append(ulEl);
}

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $("li:contains('Strider')").text('Aragorn');
}

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  var zeeHobbits = $('.hobbit');
  var zeeBuddies = $('.buddy');
  var landIndex = lands.indexOf("Rivendell");
  var ulEl = $('<ul>', {id: 'all-together'});
  $(ulEl).append(zeeHobbits);
  $(ulEl).append(zeeBuddies);
  $('#land_'+landIndex).append(ulEl);
  // create a new div called 'the-fellowship'
  var fellowDiv = $('<div>');
  $('body').prepend(fellowDiv);
  $('li', $(ulEl)).each(function() {
    // add each hobbit and buddy one at a time to 'the-fellowship'
    // after each character is added make an alert that they have joined your party
    $(fellowDiv).append($(this));
    window.alert($(this).text() + 'has joined the party!');
  });
}

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  var gLi = $("li:contains('Gandalf')");
  gLi.text('Gandalf the White');
  // apply style to the element
  // make the background 'white', add a grey border
  $(gLi).css({"background-color":"white", "border":"2px solid gray"});
}










$(function(){
  console.log('whattup');
  makeMiddleEarth(lands);
  makeHobbits(hobbits);
  keepItSecretKeepItSafe();
  makeBaddies(baddies);
  makeBuddies(buddies);
})
