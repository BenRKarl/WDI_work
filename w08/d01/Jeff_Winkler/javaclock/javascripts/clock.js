
$(function(){

  var now = new Date();
  hour = now.getHours() % 12;
  minute = now.getMinutes();
  console.log(hour, minute);
  var secDegree = 6;
  var minDegree = 0.1;
  var hourDegree = 0.008333333333333;
  var counter = hour*3600 + minute * 60;
  setInterval(function(){
    secMove = secDegree * counter;
    minMove = minDegree * counter;
    hourMove = hourDegree * counter;
    $('.second-hand').css("-webkit-transform", "rotate("+secMove+"deg)");
    $('.minute-hand').css("-webkit-transform", "rotate("+minMove+"deg)");
    $('.hour-hand').css("-webkit-transform", "rotate("+hourMove+"deg)");
    counter++;
  }, 1000);


});
