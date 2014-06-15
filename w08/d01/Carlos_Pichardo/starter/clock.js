$(function(){
 setInterval( function() {
      var seconds = new Date().getSeconds();
      var secondsDegree = seconds * 6;
      var secondsRotation = "rotate(" + secondsDegree + "deg)";

      $("#second-hand").css({ "transform": secondsRotation });

      }, 1000 );


      setInterval( function() {
      var mintutes = new Date().getMinutes();
      var minutesDegree = mintues * 6;
      var minuteRotation = "rotate(" + minutesDegree + "deg)";

      $("#mininute_hand").css({"transform" : minuteRotation });

      }, 1000 );

      setInterval( function() {
      var hours = new Date().getHours();
      var getmin = new Date().getMinutes();
      var hourDegree = hours * 30 + (getmin / 2);
      var hourRotate = "rotate(" + hourDegree + "deg)";

      $("#hour-hand").css({ "transform": hourRotate});

      }, 1000 );
  // Set up a setInterval that runs every second (1000ms).
  // It should call an animate function that moves the clock hands.
  // It may be necessary to keep track of elapsed seconds in a variable.

});



