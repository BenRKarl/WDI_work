$(function(){

  // Though seemingly simple, this took me hours. Such is life.
  // I found that reducing the setInterval to 100ms and correspondingly reducing the change in degrees 10X
  // produces a continuous second-hand movement akin to a mechanical watch as opposed to a quartz.
  var secondRotation = 0;
  var minuteRotation = 0;
  var hourRotation   = 0;

  var intervalID = window.setInterval(windClock, 1000);

  // I found the jQuery.fn.rotate function on StackOverflow from user screenmutt. Thanks, screenmutt.
  function windClock() {
    jQuery.fn.rotate = function(degrees) {
    $(this).css({'-webkit-transform' : 'rotate('+ degrees +'deg)',
                 '-moz-transform' : 'rotate('+ degrees +'deg)',
                 '-ms-transform' : 'rotate('+ degrees +'deg)',
                 'transform' : 'rotate('+ degrees +'deg)'});
    };

  // Degrees
    secondRotation += 6;
    minuteRotation += 0.1;
    hourRotation   += (0.1/60);

    $('#second-hand').rotate(secondRotation);
    $('#minute-hand').rotate(minuteRotation);
    $('#hour-hand').rotate(hourRotation);
  }
})


  // I hope you enjoyed checking out my...clockwork...

  // THE END
