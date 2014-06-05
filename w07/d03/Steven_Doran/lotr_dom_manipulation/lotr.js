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

function makeMiddleEarth(lands){

   var landSection = $('<section>').attr('id', 'middle-earth');
   $('body').append(landSection);

   for (var i in lands){
      var landArticle = $('<article>').attr('id', lands[i]);
      var land = $('<h1>').html(lands[i]);
      $(landArticle).append(land);
      $(landSection).append(landArticle);
   };
}

function makeHobbits(hobbits){

   var hobbitList = $('<ul>').addClass('dirty-hobbitses');

   // $('h1:contains(Shire)').append(hobbitList);

   $('#The\\ Shire').append(hobbitList);

   for (var i in hobbits){
      var hobbitEl = $("<li>").html(hobbits[i]).addClass('hobbit');
      hobbitList.append(hobbitEl);
   };
}

function keepItSecretKeepItSafe(){      
   var frodo = $("li:contains(Frodo)");
   var ring = $('<div>').attr('id', 'the-ring');
   $(frodo).append(ring);
};

function makeBaddies(baddies){
   var baddieList = $('<ul>').addClass('baddies');

   $('#Mordor').append(baddieList);

   for (var i in baddies){
      var baddieEl = $("<li>").html(baddies[i]).addClass('baddie');
      baddieList.append(baddieEl);
   }
}

$(function(){

   makeMiddleEarth(lands);

   makeHobbits(hobbits);

   keepItSecretKeepItSafe();

   makeBaddies(baddies);
})
















