console.log("Do you like kittens?")

$(function(){
  var width = Math.floor(Math.random() * 500) + 200;
  var height = Math.floor(Math.random() * 500) + 200;
  var kittenUrl = "http://placekitten.com/"+width+"/"+height;

  $.ajax({
    url: "/kittens/random",
    dataType: 'html',
    success: function(widthHeight){
          $('#kitten').html('<img src="'+ kittenUrl +'">');
    }
  })
})
//syntax for interpolating variable in url is wild...
// ('<img src="'+ kittenUrl +'">')



function saveKitten(){
  $('#yay').click(function(){

    $.ajax({
      type: 'POST',
      cache: false,
      // url: "/kittens/random", //not sure what goes here...
      data: { kitten: { url: kittenUrl } },
      success: function(data) {
           window.location.reload();
      },

    })
  })
}
