var angle = 0
$(function(){
  setInterval(function(){
    angle+=3
    $('#second-hand').rotate(angle)
  }, 500);
  // Set up a setInterval that runs every second (1000ms).
  // It should call an animate function that moves the clock hands.
  // It may be necessary to keep track of elapsed seconds in a variable.

})
