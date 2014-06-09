function letThereBeLove(numHearts){

  for (var i = 0; i < numHearts; i++) {
  var newHeart = $("<h1 class='hearts'>&hearts;</h1>");
  // var newHeart = $("<h1>").addClass('hearts').html('&hearts;');
  $('body').append(newHeart);
  };
$('.hearts').each(function(idx, el){

  $(el).animate({
    top: ((Math.random()*200) -50) + '%',
    left: ((Math.random()*200) -50) + '%',
    opacity: 0
  }, 2000, 'linear', function(){$(this).remove();})

})

}

$(function(){

  setInterval(function(){
    letThereBeLove(10);

  }, 125)

})


//to get an icon:
// var new_element = $('<img>')
// .addClass('proto')
// .attr('src', 'http://www.andrewmadden.com/page/content/image')

//to change the origin point of the hearts to follow the mouse:
// //$(function(){}
//$('body').on('mousemove', function(e){
//   var pageX = e.pageX;
//   var pageY - e.pageY;
// })
