$(function(){
  console.log("hello")

  // Set up a setInterval that runs every second, minute, hour (1000ms = 1s).
  function moveSecond() {
    var second = setInterval(clockAnimate("second-hand"), 1000);
    return second;
  }
  moveSecond();

  function moveMinute() {
    var minute = setInterval(clockAnimate("minute-hand"), 60000);
  }
  moveMinute();

  function moveHour() {
    var hour = setInterval(clockAnimate("hour-hand"), 3600000);
  }
  moveHour();

  // It should call an animate function that moves the clock hands.
  function clockAnimate(hand) {
    // var clockHand = document.getElementById(hand);
    var moveIt = $("#"+hand).css("transform", "rotate(6deg)");
  }

  // It may be necessary to keep track of elapsed seconds in a variable.

})
