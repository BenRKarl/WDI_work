function letThereBeLove(numHearts){

  for (var i = 0; i < numHearts; i++){
    var newHeart = $("<h1 class='hearts'>&hearts;</h1>");
    $('body').append(newHeart);
  };

  $('.hearts').each(function(idx, el){
    $(el).animate({
      top: ((Math.random()*200) - 50) +'%',
      left: ((Math.random()*200) - 50) + '%',
      opacity: 0
    }, 2000, 'linear', function(){
      $(this).remove();}
    );

  });
}

function letThereBeEgo(numHearts){

  for (var i = 0; i < numHearts; i++){
    var newHeart = $("<h1 class='name'>Paul</h1>");
    $('body').append(newHeart);
  };

  $('.name').each(function(idx, el){
    $(el).animate({
      top: ((Math.random()*200) - 50) +'%',
      left: ((Math.random()*200) - 50) + '%',
      opacity: 0
    }, 2000, 'linear', function(){
      $(this).remove();}
    );

  });
}

$(function(){
  setInterval(function(){
    letThereBeLove(1), letThereBeEgo(1);
  }, 20)

})
