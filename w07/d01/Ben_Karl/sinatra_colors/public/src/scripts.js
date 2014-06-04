function pullPalette(){
$('.random-palettes').on('click', apiCall)
}

function apiCall(callback){
  var callback = function(data){
    extractPalette(data);
  }
  $.ajax({
    url: '/palettes.json',
    success: callback
  })
}

function extractPalette(data){
  var randomPalette = data[Math.floor(Math.random() * data.length)];
  var paletteName = randomPalette.title;
  var paletteColors = randomPalette.colors;
  $('.color').remove();
  $('.palette-title').html(paletteName + " hath been unleashed!");
  for (var i = 0; i < paletteColors.length; i++){
    colorDiv = $('<div>').addClass('color').css('backgroundColor', "#" + paletteColors[i]);
    $('.palette-div').append(colorDiv);
  }
}

function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(
    pullPalette()
  );
}

$(function(){
  setEventHandlers();
});
