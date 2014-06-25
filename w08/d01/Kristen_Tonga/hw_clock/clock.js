// COULD BE DRYER, and I WOULDN'T TRUST IT. IF YOU CHANGE THE INTERVAL TO 10 MILLESECONDS, THIS INTERACTS VERY STRANGLY WITH THE MOUSE... BUT IT WORKS

$(function(){
  var that = this
  var secondHand = '#second-hand';
  var minuteHand = '#minute-hand';
  var hourHand = '#hour-hand';
  var movemHr = 0.1/60;

  var secondDegrees = 0;
  var minuteDegrees = 0;
  var hourDegrees = 0;

  setInterval(function() {
    secondDegrees += 6;
    rotate(secondHand, secondDegrees);
  }, 1000 );

  setInterval(function() {
    minuteDegrees += 0.1;
    rotate(minuteHand, minuteDegrees);
  }, 1000 );

  setInterval(function() {
    hourDegrees += 0.1;
    rotate(hourHand, hourDegrees);
  }, 60000);

  // It should call an animate function that moves the clock hands.
  // It may be necessary to keep track of elapsed seconds in a variable.

});

function rotate(hand, d){
  $(hand).css('-webkit-transform','rotate(' + d + 'deg)')
          .css('-o-transform','rotate(' + d + 'deg)')
          .css('transform','rotate(' + d + 'deg)')
return this;
}


// Funness!!
//   setInterval(function() {
//     secondDegrees += 6;
//     rotate(secondHand, secondDegrees);
//   }, 10 );

//   setInterval(function() {
//     minuteDegrees += 0.1;
//     rotate(minuteHand, minuteDegrees);
//   }, 10 );

//   setInterval(function() {
//     hourDegrees += movemHr
//     rotate(hourHand, hourDegrees);
//   }, 10);
