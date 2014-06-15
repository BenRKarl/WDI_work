$(function(){
  var $that = this;
  var date= new Date();
  var secondAngle = 0;
  var minuteAngle = 0;
  var hourAngle = 0;
  var secondAngle = 6 * date.getSeconds();
  var minuteAngle = 6 * date.getMinutes();
  var hourAngle = 30 * date.getHours();
  $("#second-hand").css({ WebkitTransform: "rotate("+ secondAngle + "deg)"});
  $("#minute-hand").css({ WebkitTransform: "rotate("+ minuteAngle + "deg)"});
  $("#hour-hand").css({ WebkitTransform: "rotate("+ hourAngle + "deg)"});


  setInterval(function(){
    $("#second-hand").css({ WebkitTransform: "rotate("+ secondAngle + "deg)"});
    secondAngle += 6;
  }, 1000);

setInterval(function(){
    $("#minute-hand").css({ WebkitTransform: "rotate("+ minuteAngle + "deg)"});
    minuteAngle += 6;
  }, 60000);

setInterval(function(){
    $("#hour-hand").css({ WebkitTransform: "rotate("+ hourAngle + "deg)"});
    hourAngle += 6;
  }, 360000);
})
