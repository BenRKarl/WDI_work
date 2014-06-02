
function jumpOff(numHits){
  for (var i = 0; i < numHits; i++) {
    var newHit = $("<h1 class='hits'>&clubs;</h1>");
      $('body').append(newHit);
  };
  $('.hits').each(function(idx, el){
    $(el).animate({
      top: ((Math.random()*200) - 50) + '%',
      left: ((Math.random()*200) - 50) + '%',
      opacity: 0
    }, 2000, 'linear', function(){ $(this).remove();}
    );
  });

    for (var i = 0; i < numHits; i++) {
    var newHit = $("<h1 class='shits'>&hearts;</h1>");
      $('body').append(newHit);
  };
  $('.shits').each(function(idx, el){
    $(el).animate({
      top: ((Math.random()*200) - 50) + '%',
      left: ((Math.random()*200) - 50) + '%',
      opacity: 0
    }, 2000, 'linear', function(){ $(this).remove();}
    );
  });
}
$(function(){
  setInterval(function(){
    jumpOff(5);
  }, 125)
})