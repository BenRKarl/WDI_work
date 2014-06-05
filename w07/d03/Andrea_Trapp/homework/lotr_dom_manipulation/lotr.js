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

///////////////////////////////////

/////////////   1   ///////////////

function makeMiddleEarth(lands) {
    // create a section tag with an id of middle-earth    
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land    

    var middleEarth = $('<section>').attr('id', 'middle-earth');
    $('body').append(middleEarth);

    lands.forEach(function(land) {      
      //console.log(land);
      var articleElem = $('<article>');
      var headerElem = $('<h1>');      
      var landNode = articleElem.append(headerElem.html(land));
      middleEarth.append(landNode)
    });
}

makeMiddleEarth(lands);

/////////////   2   ///////////////

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit

  var ulElem = $('<ul>');
  
  hobbits.forEach(function(hobbit){
    //console.log(hobbit);
    var liElem = $('<li>').addClass('hobbit');
    var liNode = liElem.html(hobbit);
    ulElem.append(liNode);
  });

  //console.log(">>>>" + $('h1').first().html() + "<<<<<");
  var landTheShire = $('h1').first();
  landTheShire.append(ulElem);
}

makeHobbits(hobbits);

/////////////   3   ///////////////

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo

  var theRing = $('<div>').attr('id', 'the-ring');

  $('li').each(function(index) {
    //console.log( index + ": " + $( this ).text() );
    if ($(this).text() === "Frodo Baggins"){
      //console.log("Add the ring to Frodo Baggins");
      $(this).append(theRing);
    }
  });

}

keepItSecretKeepItSafe();

/////////////   4   ///////////////

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor

  var ulElem = $('<ul>');
  
  baddies.forEach(function(baddy){
    //console.log(baddy);
    var liElem = $('<li>');
    var liNode = liElem.html(baddy);
    ulElem.append(liNode);
  });

  //console.log(">>>>" + $('h1').last().html() + "<<<<<");
  var landMordor = $('h1').last();
  landMordor.append(ulElem);
}

makeBaddies(baddies);

/////////////   5   ///////////////

function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background

  var asideElem = $('<aside>');
  $('body').append(asideElem);

  var ulElem = $('<ul>');
  asideElem.append(ulElem);

  buddies.forEach(function(buddy){
    //console.log(buddy);
    var liElem = $('<li>');
    if (buddy === "Gandalf the Grey"){
      liElem.css('background-color', 'gray');
    }
    var liNode = liElem.html(buddy);
    ulElem.append(liNode);
  });
}

makeBuddies(buddies);

/////////////   6   ///////////////

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell

  var ulElem = $('<ul>'); 

  var hobbits = $('.hobbit');  

  for (var i = 0; i < hobbits.length; i++){
    //console.log(hobbits[i]);
    ulElem.append(hobbits[i]);
  }

  //console.log(">>>>" + $( "article:nth-of-type(2)" ).html() + "<<<<<");
  var landRivendell = $('article:nth-of-type(2)');
  landRivendell.append(ulElem);

}

leaveTheShire();

/////////////   7   ///////////////

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"

  $('li').each(function(){
      if( $(this).text() === 'Strider' ){        
        $(this).html('Aragorn');
      } 
  });

}

beautifulStranger();

/////////////   8   ///////////////

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party

  var theFellowship = $('<div>').attr('name', 'the-fellowship');
  var landRivendell = $('article:nth-of-type(2)');
  landRivendell.append(theFellowship);

  var hobbits = $('.hobbit'); 
  //console.log(hobbits.length);

  for (var i = 0; i < hobbits.length; i++){
    //console.log(hobbits[i]);
    theFellowship.append(hobbits[i]);
    alert(hobbits[i].textContent + " joined the party");
  }
 
  var buddies = $('aside ul li'); 
  console.log(buddies.length);

  for (var i = 0; i < buddies.length; i++){
    //console.log(buddies[i]);
    theFellowship.append(buddies[i]);
    alert(buddies[i].textContent + " joined the party");
  }

}

forgeTheFellowShip();

// /////////////   9   ///////////////

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border

  $('li').each(function(){
      if( $(this).text() === 'Gandalf the Grey' ){        
        $(this).html('Gandalf the White').css({'background-color': 'white', 'border': '1px solid grey'});
      } 
  });

}

theBalrog();

/////////////   10   ///////////////

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer

  alert("The horn of gondor has been blown! Boromir's been killed by the Uruk-hai!");

  $('li').each(function(){
      if( $(this).text() === 'Boromir' ){        
        $(this).css({'text-decoration': 'line-through'});
      } 
  });

  $('li').each(function(){
      if( $(this).text() === 'The Uruk-hai' ){        
        $(this).remove();
      } 
  });

  var footerElem = $('<footer>');
  $('body').append(footerElem);

  $('li').each(function(){
      if( $(this).text() === 'Boromir' ){
        footerElem.append($(this));        
      } 
  });

}

hornOfGondor();

/////////////   11   ///////////////

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor

  var landMordor = $('h1').last();  

  var hobbits = $('.hobbit'); 
  
  for (var i = 0; i < hobbits.length; i++){

    if (hobbits[i].textContent.indexOf("Frodo") == 0 || hobbits[i].textContent.indexOf("Sam") == 0){
        //console.log(hobbits[i].textContent);
        landMordor.append(hobbits[i]);
    }
    
  }
  var mountDoom = $('<div>').attr('id', 'mount-doom');
  landMordor.append(mountDoom);
}

itsDangerousToGoAlone();

/////////////   12   ///////////////

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom

  var gollum = $('<div>').attr('id', 'gollum');
  var landMordor = $('h1').last();
  landMordor.append(gollum);

  var theRing = $('#the-ring');
  gollum.append(theRing);

  var mountDoom = $('#mount-doom');
  mountDoom.append(gollum);

}

weWantsIt();

/////////////   13   ///////////////

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire

  var gollum = $('#gollum');
  //console.log(gollum);
  gollum.remove();

  // #middle-earth > article:nth-child(3) > h1 > ul
  var baddies = $('article:nth-of-type(3) h1 ul');  
  baddies.remove();

  //var landTheShire = $('h1').first();  
  var landTheShire = $('article:nth-of-type(1) h1 ul');

  var hobbits = $('.hobbit'); 
  
  for (var i = 0; i < hobbits.length; i++){
    landTheShire.append(hobbits[i]);       
  }

}

thereAndBackAgain();

////////////////////////////////////

