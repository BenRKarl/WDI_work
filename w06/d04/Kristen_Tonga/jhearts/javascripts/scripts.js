

function letThereBeLove(numHearts){
  for (var i = 0; i < numHearts; i++) {
    var newHeart = $("<h1 class='hearts'>&hearts;</h1>");
    $('body').append(newHeart);
  };

  $('.hearts').each(function(id, el){
    $(el).animate({
        top: ((Math.random()*200) - 50) + '%',
        left: ((Math.random()*200) - 50) + '%',
        opacity: 0
      }, 2000, 'linear', function(){ $(this).remove();
    });
  });
}

$(function(){
  setInterval(function(){
    letThereBeLove(7);
  }, 1250)
})


// var new_element = $('<img>').addClass('proto').attr('src', 'IMAGE_HTTP_GOES_HERE!!')
