function speedUpTime(factor){
  warp = factor;
}

$(function(){

var clockFace = $('<div>').attr('id', 'clockFace').css('height', '250px').css('width', '250px')
                           .css('border', '3px #C3D8EE solid').css('border-radius', '125px')

var secondHand= $('<div>').attr('id', 'secondHand').css('height', '125px').css('width', '1px')
                           .css('border', '1px #C3D8EE solid').css('margin', '0 auto')
                           .css('transform-origin','bottom');
var minuteHand= $('<div>').attr('id', 'minuteHand').css('height', '125px').css('width', '1px')
                           .css('border', '2px #C3D8EE solid').css('margin', '0 auto')
                           .css('transform-origin','top');
var hourHand  = $('<div>').attr('id', 'hourHand').css('height', '75px').css('width', '1px')
                           .css('border', '3px #C3D8EE solid').css('margin', '0 auto')
                           .css('transform-origin','top').css('top', '-125px');


clockFace.appendTo($('.container'));
secondHand.appendTo(clockFace);
minuteHand.appendTo(clockFace);
hourHand.appendTo(clockFace);



var degree1 = 0
var degree2 = 0
var degree3 = 0

var warp = 1


setInterval(function(){
  secondHand.css('transform', 'rotate('+ ++degree1/10 +'deg)')}, 10
);
setInterval(function(){
  minuteHand.css('transform', 'rotate('+ ++degree2/10 +'deg)')}, 600
);
setInterval(function(){
  hourHand.css('transform', 'rotate('+ ++degree3 +'deg)')}, 360000
);
// setInterval(function(){
//   var degree = 1
//   $('#secondHand').css('transform','rotate('+ ++degree +'deg)')
// }, 50);
// })


// $('#secondHand').rotate(20*Math.PI/180);
minuteHand.appendTo(clockFace);
hourHand.appendTo(clockFace);





})
