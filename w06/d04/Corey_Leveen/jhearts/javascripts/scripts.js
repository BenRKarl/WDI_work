function letThereBeCash(numDollas){
  for (var i = 0; i < numDollas; i++){
    var newDolla = $("<h1 class='dollas'>&sect;<h1>");
    $('body').append(newDolla);
  };

  $('.dollas').each(function(idx, el){
    $(el).animate({
      top: ((Math.random()*200) -50) + '%',
      left: ((Math.random()*200) -50) + '%',
      opacity: 0
    }, 2000, 'linear', function(){ $(this).remove(); }
    );
  });
}

$(function(){

  setInterval(function(){
    letThereBeCash(20);
  }, 250)
})
