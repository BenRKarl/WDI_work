console.log('Now you see me...')

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

  var lands = [
    "The Shire",
    "Rivendell",
    "Mordor"
  ];

function makeMiddleEarth(lands){
  lands.forEach(function(name, index){
    console.log(name);
    var elem = $('<article>').html(name).addClass(name);
    $('.middle-earth').append(elem)
  });
}

function makeHobbits(hobbits){
  var list = $('<ul>').addClass('hobbits');
  hobbits.forEach(function(name, index){
    console.log(name);
    var elem = $('<li>').html(name).addClass('hobbit');
    $(list).append(elem)
  });
  $('.Shire').append(list)
}

function keepItSecretKeepItSafe(){
  var ring = $('<div>').attr('id', 'the-ring');
  var frodo = $("li:contains('Frodo')")

  $(frodo).append(ring)
}

function makeBaddies(baddies){
  var list = $('<ul>').addClass('baddies');
  baddies.forEach(function(name, index){
    console.log(name);
    var elem = $('<li>').html(name).addClass('baddy');
    $(list).append(elem)
  });
  $('.Mordor').append(list)
}

function makeBuddies(buddies){
  var list = $('<ul>').addClass('buddies');
  buddies.forEach(function(name, index){
    console.log(name);
    var elem = $('<li>').html(name).addClass('buddy');
    $(list).append(elem)
  })
  $('.aside').append(list)
  $("li:contains('Gandalf')").css('background-color','grey')
}

function leaveTheShire(){
  $(".Rivendell").append($(".hobbits"))
}

function beautifulStranger(){
  $("li:contains('Strider')").text("Aragorn")
}

function theBalrog(){
  var gandalf = $("li:contains('Gandalf')")
  gandalf.text("Gandalf the White").css('border', '1px solid lightgrey').css('background-color','white')
}

function hornOfGondor(){
  var boromir = $("li:contains('Boromir')")
  boromir.each( function() {
    alert("The horn of Gondor has been blown!! Boromir's been killed by the Uruk-hai.");
  });
  $(boromir).css('text-decoration','line-through')
  var dead = $('<h4>').text('The Dead')
  $('.footer').append(dead).append(boromir)
  $("li:contains('The Uruk-hai')").remove()
}

function itsDangerousToGoAlone(){
  var frodo = $("li:contains('Frodo')")
  var sam = $("li:contains('Gamgee')")
  var ringCrew = $('<ul>').append(frodo).append(sam)
  var mountDoom = $('<div>').addClass('mountDoom').text('Mount Doom')
  $('.Mordor').append(ringCrew).append(mountDoom)
}

function weWantsIt(){
  var gollum = $('<div>').addClass('gollum').text("Gollum");
  var ring = $('#the-ring');
  function gollumToMordor() {$('.Mordor').append(gollum)};
  function gollumTakesRing() {(gollum).append(ring)};
  function gollumFalls() {$('.mountDoom').append(gollum)} ;
    setTimeout(function(){ gollumToMordor()
      setTimeout(function(){ gollumTakesRing()
      setTimeout(function(){ gollumFalls() }, 250);
    }, 250);
  }, 250);
}

function thereAndBackAgain() {
  $('.gollum').remove();
  $('.baddies').remove()
  var go_home = $('<ul>').addClass('adventurers').append($('.hobbit'))
  $('.Shire').append(go_home)
}

function runStory(){
    makeMiddleEarth(lands);
    setTimeout(function(){ makeHobbits(hobbits)
      setTimeout(function(){ keepItSecretKeepItSafe()
        setTimeout(function(){ makeBaddies(baddies)
          setTimeout(function(){ makeBuddies(buddies)
            setTimeout(function(){ leaveTheShire()
              setTimeout(function(){ beautifulStranger()
                setTimeout(function(){ theBalrog()
                  setTimeout(function(){ hornOfGondor()
                    setTimeout(function(){ itsDangerousToGoAlone()
                      setTimeout(function(){ weWantsIt()
                        setTimeout(function(){ thereAndBackAgain() }, 2000);
                      }, 2000);
                    }, 2000);
                  }, 2000);
                }, 1000);
              }, 1000);
            }, 1000);
          }, 1000);
        }, 1000);
      }, 1000);
    }, 1000);
}


$(function(){
$('.middle-earth-button').on('click', function(e){
  runStory();
})



})
