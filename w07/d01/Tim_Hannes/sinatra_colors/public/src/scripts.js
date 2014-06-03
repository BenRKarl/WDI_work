
function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(data){
    var callback = callback || function(data){
      console.log(data);
    };
    var url = "/palettes.json";
    colorWheel = $.ajax({
    url: url,
    success: callback
  }).done(function(data){
});
  return this;
  })
}


$(function(){
  setEventHandlers();
});


function displayColors(data){
  for (var i = 0; i < colorWheel.responseJSON.length; i++){
  var colorDiv = $('<div>').html(colorWheel.responseJSON[i].colors);
  var div1 = $('div').html(colorWheel.responseJSON[i].colors[0]);
  var div2 = $('div').html(colorWheel.responseJSON[i].colors[1]);
  var div3 = $('div').html(colorWheel.responseJSON[i].colors[2]);
  var div4 = $('div').html(colorWheel.responseJSON[i].colors[3]);
  var div5 = $('div').html(colorWheel.responseJSON[i].colors[4]);
  $('.color-palette').append(colorDiv);
  }
}

// colorWheel.responseJSON[0].colors[0]
// "8C7F5C"

// $('<div>').css('backgroundColor', 'blue')
