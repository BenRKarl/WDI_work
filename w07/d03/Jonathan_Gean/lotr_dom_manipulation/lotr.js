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
  var middle = $('<section>').attr('id', 'middle-earth');
  $('#world').append(middle)
  $(lands).each(function(index){
    var eachland = $('<article>').html("<h1>"+lands[index])
    $('#middle-earth').append(eachland);
  })
}

function makeHobbits(hobbits){
  $(hobbits).each(function(index){
     var hobbitinstance = $('<li>').html(hobbits[index]).attr('class', 'hobbit');
     console.log(hobbitinstance)
  })

}

function keepItSecretKeepItSafe() {
  var ring = $('<div>').attr('id', 'the-ring')
  var frodo = $('li:contains(Frodo)')
frodo.append(ring)
}

function makeBaddies(baddies){
  $(baddies).each(function(index){
     var baddyinstance = $('<li>').html(baddies[index])
     $('#baddies').append(baddyinstance)
  })
}

function makeBuddies(buddies){
  var buddiesaside = $('<aside>').attr('id', 'buddiesaside')
  $('#buddies').append(buddiesaside)
  $(buddies).each(function(index){
     var buddyinstance = $('<li>').html(buddies[index])
     $('#buddiesaside').append(buddyinstance)
  })
  $('li:contains(Gandalf)').css( "backgroundColor", "grey" )
}

function leaveTheShire() {
  makeMiddleEarth(lands)
   $(hobbits).each(function(index){
     var hobbitinstance = $('<li>').html(hobbits[index]).attr('class', 'hobbit');
     $('article:contains(Rivendell)').append(hobbitinstance)
  })

}
  makeBuddies(buddies);

function beautifulStranger() {
    $('li:contains("Strider")').contents().replaceWith("Aragorn")
  }

function forgeTheFellowShip() {
  leaveTheShire()
  $('<div>').attr('id','the-fellowship')
   var buddiesaside = $('<aside>').attr('id', 'buddiesaside')
  $('#the-fellowship').append(buddiesaside)
  $(buddies).each(function(index){
     var buddyinstance = $('<li>').html(buddies[index])
     $('#buddiesaside').append(buddyinstance)
  })
  $('li:contains(Gandalf)').css( "backgroundColor", "grey" )
}
