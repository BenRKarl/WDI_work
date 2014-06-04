
function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(){
    getColorPalettes(createPalette)
  });
}

function getColorPalettes(callback) {
  var callback = callback || function(data){console.log(data)}
  $.ajax({
      url: '/palettes.json',
      success: callback
    });
  return this;
}

function createPalette(data) {
  var paletteArray = data;
  for (var i = 0; i < paletteArray.length; i++) {
    var paletteDiv = $('<div>').addClass('palette')
                               .html(paletteArray[i].title)
                               .css('float', 'left')
                               .css('margin', '10px')
                               .css('font-size', '12px')
    var palette = paletteArray[i].colors
    for (var j = 0; j < palette.length; j++) {
      var colorDiv = $('<div>').addClass('color')
                               .css('height', '75px')
                               .css('width', '32px')
                               .css('background-color', '#'+paletteArray[i].colors[j])
                               .css('float', 'left');
      paletteDiv.append(colorDiv);
      $('body').append(paletteDiv);
    }
  }
}

$(function(){
  setEventHandlers(); {

  }
});
