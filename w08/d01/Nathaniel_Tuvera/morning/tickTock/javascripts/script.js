var clockFace = $('<div>').attr('id', 'clockFace').css('height', '250px').css('width', '250px')
                           .css('border', '3px white solid').css('border-radius', '125px');
var secondHand= $('<div>').attr('id', 'secondHand').css('height', '125px').css('width', '1px')
                           .css('border', '1px white solid').css('margin', '0 auto')
var minuteHand= $('<div>').attr('id', 'minuteHand').css('height', '125px').css('width', '1px')
                           .css('border', '2px white solid').css('margin', '0 auto')
var hourHand  = $('<div>').attr('id', 'hourHand').css('height', '125px').css('width', '1px')
                           .css('border', '3px white solid').css('margin', '0 auto')

secondHand.setTimeout(animate(){rotate('')}, 1000)




$(function(){

clockFace.appendTo($('.container'));
secondHand.appendTo(clockFace);
// minuteHand.appendTo(clockFace);
// hourHand.appendTo(clockFace);




})
