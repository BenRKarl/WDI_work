// var new_element = $('<img>')
// .addClass('proto')
// .attr('src', 'http://...')

function letThereBeLove(numHearts){

  for (var i = 0; i < numHearts; i++) {
    var newHeart = $("<h1 class='hearts'>&#9787;</h1>");
    $('body').append(newHeart);    
  };

  $('.hearts').each(function(idx, el){
    $(el).animate({
      top: ((Math.random()*200) - 50) + '%',
      left: ((Math.random()*200) - 50) + '%',
      opacity: 0
    }, 2000, 'linear', function(){ $(this).remove(); })

  })

}


$(function(){

  $('body').on('mousemove', function(e){
    pageX = e.pageX;
    pageY = e.pageY;
  })

  setInterval(function(){
    letThereBeLove(10);
  }, 500)


})