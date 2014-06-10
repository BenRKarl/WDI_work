function secondHand(degree){
  var second = $('.hands.second');
  second.css({'transform'  : 'rotate('+degree+'deg)',
      'transform-origin' : '0 100%',
      '-ms-transform'    : 'rotate('+degree+'deg)',
      '-ms-transform-origin' : '0 100%',
      '-webkit-transform': 'rotate('+degree+'deg)',
      '-webkit-transform-origin' : '0 100%'});
}

function minuteHand(degree){
  var second = $('.hands.minute');
  second.css({'transform'  : 'rotate('+degree+'deg)',
      'transform-origin' : '0 100%',
      '-ms-transform'    : 'rotate('+degree+'deg)',
      '-ms-transform-origin' : '0 100%',
      '-webkit-transform': 'rotate('+degree+'deg)',
      '-webkit-transform-origin' : '0 100%'});
}

function hourHand(degree){
  var second = $('.hands.hour');
  second.css({'transform'  : 'rotate('+degree+'deg)',
      'transform-origin' : '0 100%',
      '-ms-transform'    : 'rotate('+degree+'deg)',
      '-ms-transform-origin' : '0 100%',
      '-webkit-transform': 'rotate('+degree+'deg)',
      '-webkit-transform-origin' : '0 100%'});
}

$(document).ready(function(){
  var d    = new Date();
  var hour = d.getHours() % 12; 
  var min  = d.getMinutes(); 
  var sec  = d.getSeconds();
  var time = d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
  console.log(time);

  var initialSec  = sec * 6;
  var initialMin  = min * 6;  
  var initialHour = hour * 30;  

  secondHand(initialSec)
  minuteHand(initialMin);
  if (initialMin >= 30){
    initialHour += 12; // Move hour hand to middle of 2 hour marks 
  }
  hourHand(initialHour);

function runClock(){
  setInterval(function() {
    secondHand(initialSec);
    initialSec += 6;
  }, 1000); 
  
  setInterval(function() {
    minuteHand(initialMin);
    initialMin += 6;
    console.log(initialMin);
  }, 60000); 

  setInterval(function() {
    hourHand(initialHour);
    initialHour += 30;
    console.log(initialHour);
  }, 360000)
}

setTimeout(runClock, 1000);

})

