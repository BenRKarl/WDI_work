// Dramatis Personae

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
    var midEarthElem = $('<section>').attr('id', 'middle-earth');
    $('.container').append(midEarthElem);

    for(var i = 0; i < this.lands.length; i++){
      var articleElem = $('<article>');
      articleElem.addClass(this.lands[i]);
      $('#middle-earth').append(articleElem);
      var landsElem = $('<h1>').html(this.lands[i]);
      $(articleElem).append(landsElem);
    }
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  var hobbitsElem = $('<ul>');
  hobbitsElem.addClass('hobbits');
  $( "article:contains('Shire')").append(hobbitsElem);
  for(var i = 0; i < this.hobbits.length; i++){
    var hobbitElem = $('<li>').html(this.hobbits[i]);
    $('.hobbits').append(hobbitElem);
  }

}

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  var ringElem = $('<div>').attr('id','the-ring');
  $( "li:contains('Frodo')").append(ringElem);
}

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var baddiesElem = $('<ul>');
  baddiesElem.addClass('baddies');
  $( "article:contains('Mordor')").append(baddiesElem);
  for(var i = 0; i < this.baddies.length; i++){
    var baddieElem = $('<li>').html(this.baddies[i]);
    $('.baddies').append(baddieElem);
  }
}

function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background

  var buddiesElem = $('<aside>');
  buddiesElem.addClass('buddies');
  $('.container').append(buddiesElem);
  for(var i = 0; i < this.buddies.length; i++){
    var buddieElem = $('<li>').html(this.buddies[i]);
    $('.buddies').append(buddieElem);
  }
  $( "li:contains('Gandalf the Grey')").css("background-color","gray");
}

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  $( "h1:contains('Rivendell')" ).parent().append($("h1:contains('The Shire')").next());
}

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $( "li:contains('Strider')" ).html("Aragorn");
}

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
  $( "h1:contains('Rivendell')").parent().append($('.buddies').children())

  var fellowshipElem = $('<div>').addClass("the-fellowship");
  $('.hobbits').each(function(i,l){ 
    fellowshipElem.append(l);
  })
  $( "h1:contains('Rivendell')").siblings().each(function(i,l){ 
    fellowshipElem.append(l);
  })
  $('.container').append(fellowshipElem);
  //I wasn't sure where you wanted these guys.  Clearly they are no longer
  //in Rivendell.  They are somewhere on the way to Mordor.  But walking
  //in to Mordor is not something one simply does.
  alert('The fellowship is formed.')


  
 
}

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
  $( "li:contains('Gandalf the Grey')")
            .html('Gandalf the White')
            .css('backgroundColor', 'white')
            .css('border', 'thin grey solid')

}

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
  alert('aaaaoooooogaaaah');
  var boromir = $( "li:contains('Boromir')" );
  var footer = $('<div>').addClass('Foooter');
  $( "li:contains('Boromir')" ).css("text-decoration","line-through");
  $( "li:contains('The Uruk-hai')" ).remove();
  boromir.remove();
  $('.container').append(footer);
  $(footer).css('margin','10px');
  footer.append(boromir);


}

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
  var frodo = $( "li:contains('Frodo')" );
  var sam = $( "li:contains('Samwise')" );
  frodo.remove();
  sam.remove();
  $('.Mordor').append(frodo);
  $('.Mordor').append(sam);
  var mtDoom = $('<div>').addClass('mount-doom');

  $('.Mordor').append(mtDoom);

}

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
  var gollum = $('<div>').addClass('gollum');
  var ring = $('#the-ring');
  $('.Mordor').append(gollum);
  
  gollum.append(ring);
}

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
  var frodo = $( "li:contains('Frodo')" );
  var sam = $( "li:contains('Samwise')" );
  var merry = $( "li:contains('Meriadoc')" );
  var pip = $( "li:contains('Peregrin')" );
  var shire = $("h1:contains('The Shire')").parent();

  shire.append(frodo);
  shire.append(sam);
  shire.append(merry);
  shire.append(pip);

  $('.gollum').remove();
  $('.baddies').remove();

}


