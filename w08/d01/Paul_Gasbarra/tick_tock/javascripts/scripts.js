function rotateSecondHand(){
  secondRotation = secondRotation + 1;
  $second.css('transform', 'rotate(' + secondRotation + 'deg)');
}

function rotateMinuteHand(){
  minuteRotation = minuteRotation + 6;
  $minute.css('transform', 'rotate(' + minuteRotation + 'deg)');
}

function rotateHourHand(){
  hourRotation = hourRotation + 30;
  $hour.css('transform', 'rotate(' + hourRotation + 'deg)');
}

$(function(){

hourRotation = 0;
minuteRotation = 0;
secondRotation = 0;

$face = $('<div>').addClass('clockFace');
$hour = $('<div>').addClass('hand hour');
$minute = $('<div>').addClass('hand minute');
$second = $('<div>').addClass('hand second');

//attach it all to the clock
$face.append($second)
$face.append($minute);
$face.append($hour);
$('.clock').append($face);

setInterval(function(){rotateSecondHand()}, 1000);
setInterval(function(){rotateMinuteHand()}, 60000);
setInterval(function(){rotateHourHand()}, 3600000);

});

