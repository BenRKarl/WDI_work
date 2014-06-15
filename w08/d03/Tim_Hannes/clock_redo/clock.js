$(function(){

 setInterval( function() {

    var seconds = new Date().getSeconds();//get seconds
    var secondHandDegree = seconds * 6; //calculate second hand degrees
    var secondHandRotation = "rotate(" + secondHandDegree + "deg)"; //rotate second hand

    $("#second-hand").css({"transform": secondHandRotation});//animate second hand

  }, 1000 );//every second

  setInterval(function(){

   var minutes = new Date().getMinutes();//get realtime minutes
   var minuteHandDegree = minutes * 6; //calculate minute hand degrees
   var minuteHandRotation = "rotate(" + minuteHandDegree + "deg)";//rotate minute hand

   $("#minute-hand").css({"transform": minuteHandRotation});//animate minute hand

  },1000);//every second

  setInterval( function() {

   var hourCount = new Date().getHours();//get realtime hours
   var getMinutes = new Date().getMinutes();//get realtime minutes
   var hourHandDegree = hourCount * 30 + (getMinutes / 2);//calculate hour hand degrees
   var hourHandRotate = "rotate(" + hourHandDegree + "deg)";//animate hour hand

   $("#hour-hand").css({"transform": hourHandRotate});

  },1000);//every second
})
