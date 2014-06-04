
function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(){
    var randomcolors = $.ajax({url: '/palettes.json'});
    var randomcolors2 = randomcolors.responseJSON;
    // for (var i = 0; i < randomcolors2.length; i++){
    //   console.log(randomcolors2[i].colors);
    //   console.log(randomcolors2[i].title);
    // }



  )};
}

$(function(){
  setEventHandlers();
});
