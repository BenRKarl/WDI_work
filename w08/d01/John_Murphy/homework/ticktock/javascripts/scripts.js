$(function(){
var count = 0
setInterval(function(){
  count += 6
  $('#minute').css('transform', 'rotate(' + count + 'deg)')
},1000)

})
