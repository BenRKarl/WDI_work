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

$(function(){
  setTimeout(function(){makeMiddleEarth(lands)}, 1000);  
  setTimeout(function(){makeHobbits(hobbits)}, 3000);
  setTimeout(function(){keepItSecretKeepItSafe()}, 4000);
  setTimeout(function(){makeBaddies(baddies)}, 5000);
  setTimeout(function(){makeBuddies(buddies)}, 7000);
  setTimeout(function(){leaveTheShire()}, 9000);
  setTimeout(function(){beautifulStranger()}, 11000);
  setTimeout(function(){forgeTheFellowShip()}, 13000);
  setTimeout(function(){theBalrog()}, 17000);
  setTimeout(function(){hornOfGondor()}, 19000);
  setTimeout(function(){itsDangerousToGoAlone()}, 21000);
  setTimeout(function(){weWantsIt()}, 24000);
  setTimeout(function(){thereAndBackAgain()}, 26000);
})

function makeMiddleEarth(lands) {
  var earth = $('<section>').attr('id', 'middle-earth');
  $('body').prepend(earth);
  for (var i = 0; i < lands.length; i++){
    var landEl = $('<article>');
    landEl.html('<h1>'+lands[i]+'</h1>'); 
    earth.append(landEl);
  }
}

function makeHobbits(hobbits) {
  var hobbitUl = $('<ul>').addClass('hobbit-list');
  $('body').prepend(hobbitUl);
  for (var i = 0; i < hobbits.length; i++){
    var hobbitLi = $('<li>').addClass('hobbits').html(hobbits[i]); 
    hobbitUl.append(hobbitLi);
  }  
}

function keepItSecretKeepItSafe() {
  var ring = $('<div>').attr('id', 'the-ring');
  var frodo = $('.hobbits')[0];
  $(frodo).append(ring).css('color', 'yellow');
}

function makeBaddies(baddies) {
  var baddieUl = $('<ul>').addClass('baddie-list');
  $('body').prepend(baddieUl);
  for (var i = 0; i < baddies.length; i++){
    var baddieLi = $('<li>').addClass('baddies').html(baddies[i]); 
    baddieUl.append(baddieLi);
  }  
}

function makeBuddies(buddies) {
  var aside = $('<aside>');
  var buddyUl = $('<ul>').addClass('buddy-list')
  $('body').prepend(aside.append(buddyUl));
  for (var i = 0; i < buddies.length; i++){
    var buddyLi = $('<li>').addClass('buddies').html(buddies[i]); 
    buddyUl.append(buddyLi);
  }  
  $($('.buddies')[0]).css('background-color','#ccc');
}

function leaveTheShire() {
  var rivendell = $($('article')[1]).append('<p></p>');
  rivendell.last().append($('.hobbit-list')[0]);  
}

function beautifulStranger(){
  var strider = $('.buddies')[3]
  $(strider).html('Aragorn').css('color', 'blue');
}

function forgeTheFellowShip(){
  var rivendell = $($('article')[1]);
  rivendell.last().append($('.buddy-list')[0]);  
  var fellowship = $('<div>').addClass('the-fellowship').html('<h3>The Fellowship</h3>');
  $('body').prepend(fellowship);

  fellowship.append('<p></p>');
  var moveHobbits = undefined;
  var moveBuddies = undefined;

  function moveHobbit(){
    var hobbits = $('.hobbit-list');  
    fellowship.last().append(hobbits.children()[0]);
    if (hobbits.children().length === 0){
      clearInterval(moveHobbits);
      moveBuddies = setInterval(moveBuddy, 500);
    }
  }
  moveHobbits = setInterval(moveHobbit, 500);
  
  function moveBuddy(){
    var buddies = $('.buddy-list');
    fellowship.last().append(buddies.children()[0]);
    if (buddies.children().length === 0){
      clearInterval(moveBuddies);
      alert('Hobbits and buddies have joined the fellowship!');
    }
  }
}

function theBalrog() {
  var gandalf = $($('.buddies')[0])
  gandalf.css({'background-color':'#fff',
               'border': '1px solid #ccc'});
  gandalf.html('Gandalf the White');
}

function hornOfGondor() {
  alert('The horn of Gondor has been blown! Boromir was killed by the Uruk-Hai');
  var boromir = $('.buddies').last();
  boromir.css('text-decoration', 'line-through');
  $('.footer').html('Casualty: ').append(boromir);
}

function itsDangerousToGoAlone(){
  var fellows = $('.the-fellowship').children();
  var mordor = $($('article')[2]).html('<p></p>');
  var frodo = $(fellows[0]);
  var sam = $(fellows[1]);
  mordor.last().append(frodo)
  mordor.last().append(sam);
  var mtDoom = $('<div>').attr('id', 'mount-doom').append('<h3>Mount Doom</h3>');
  mordor.append(mtDoom);
}

function weWantsIt() {
  var gollum = $('<div>').attr('id', 'gollum').append('Gollum');
  var mordorResidents = $($('h1')[2]).first();
  $(mordorResidents).append(gollum);
  gollum.append($('#the-ring')).css('color', 'yellow'); 
  $(".hobbit:contains('Frodo')").css('color', '#000');
  var mtDoom = $('#mount-doom').append('<p></p>')
  $(mtDoom).last().append(gollum);
}

function thereAndBackAgain() {
  $('#gollum').remove();
  $('.baddie-list').remove();
  var shire = $($('article')[0]).append('<p></p>');
  $(shire).last().append($('.hobbits'));
}
