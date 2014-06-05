function showPalette(e) {
  var colors = $(this).data('colors').split(',');
  $('.palette_of_palettes').html('');
  $.each(colors, function(index, color) {
    var colorDiv = $('<div>').css({
        'width': '100px',
        'height': '100px',
        'backgroundColor': '#' + color,
        'display': 'inline-block',
        'margin': '10px'
    });
    $('.palette_of_palettes').append(colorDiv);
  });
}

$(function(){
  $('.color-generator').on('click', function(){
    function errorCallback(data) {
      console.log(data);
    }
    function successCallback(colorPalettes) {
      var palettes = $('.palette_of_buttons').html('');
      $.each(colorPalettes, function(index, colorPalette) {
        var paletteButton = $('<button>').html(colorPalette.title);
        paletteButton.data('colors', colorPalette.colors.join(','));
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
});
