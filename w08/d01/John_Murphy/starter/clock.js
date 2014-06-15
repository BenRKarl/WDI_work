$(function(){
  // Set up a setInterval that runs every second (1000ms).
  // It should call an animate function that moves the clock hands.
  // It may be necessary to keep track of elapsed seconds in a variable.
var count = 0
setInterval(function(){
  count += 6
  $('#second-hand').css('transform', 'rotate(' + count + 'deg)')
},1000)

var minuteCount = 0
setInterval(function(){
  minuteCount += 6
  $('#minute-hand').css('transform', 'rotate(' + minuteCount + 'deg)')
},60000)


var hourCount = 0
setInterval(function(){
  hourCount += 30
  $('#hour-hand').css('transform', 'rotate(' + hourCount + 'deg)')
},3600000)
})
