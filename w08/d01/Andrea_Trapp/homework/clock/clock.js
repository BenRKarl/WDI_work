
$(function(){
  
  // Set up a setInterval that runs every second (1000ms).
  // It should call an animate function that moves the clock hands.
  // It may be necessary to keep track of elapsed seconds in a variable.

  // Initialize clock
  var seconds = new Date().getSeconds();
  var sdegree = seconds * 6;
  $("#second-hand").css({"transform": "rotate(" + sdegree + "deg)"});

  var minutes = new Date().getMinutes();
  var mdegree = minutes * 6;
  $("#minute-hand").css({"transform": "rotate(" + mdegree + "deg)"});
  
  var hours = new Date().getHours();
  var hdegree = hours * 30 + (minutes / 2);
  $("#hour-hand").css({"transform": "rotate(" + hdegree + "deg)"});


  // Start clock (rotate / animate)  

  setInterval(function(){

    // SECOND-HAND
    if (seconds == 59) {
      seconds = 0; 

      // MINUTES-HAND
      if (minutes == 59) {
        minutes = 0;

        // HOUR-HAND 
        if (hours == 23) {
          hours = 0;
        } else {
          hours += 1;
        }
        hdegree = hours * 30 + (minutes / 2);   
        $("#hour-hand").css({"transform": "rotate(" + hdegree + "deg)"});

      } else {
        minutes += 1;
      }

      mdegree += 6;   
      $("#minute-hand").css({"transform": "rotate(" + mdegree + "deg)"});

    } else {
      seconds += 1;       
    } 

    sdegree += 6;
    $("#second-hand").css({"transform": "rotate(" + sdegree + "deg)"});    

  }, 1000);

})