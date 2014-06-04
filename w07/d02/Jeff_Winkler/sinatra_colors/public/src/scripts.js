

function showPalette(e) {
  console.log(e);
  var colors = $(this).data('colors');
  $('.palette').html('');
  $.each(colors, function(index, color) {
    var colorDiv = $('<div>').css({
      "width":"100px",
      "height" : "100px",
      "background-color": "#" + color,
      "display":"inline-block"
    });
    $('.palette').append(colorDiv);
  });
}



$(function(){
  $('.color-generator').on('click', function(){
    function errorCallback(data) {
      console.log(data);
    }
    function successCallback(data){
      var palettes = $('.palettes');
      $.each(data, function(index, palette) {
        var paletteButton = $('<button>').html(palette.title);
        paletteButton.data('colors', palette.colors);
        paletteButton.on('click', showPalette);
        palettes.append(paletteButton);

      });
    }
    $.ajax({
      url: '/palettes.json',
      success: successCallback,
      error: errorCallback
    });
  });
  $('body').css({"background-color":"#222222", "color":"green"})
});


