function showPalette(elt) {
  var colors = $(this).data('colors').split(',');
  $('.palette').animate({ height: '1px' });
  $('.palette').html('');
  $.each(colors, function(index, color){
      var colorDiv = $('<div>');
      
      $('<div>').css({
        'width': '100px',
        'height': '1px',
        'background-color': '#' + color,
        'display': 'inline-block',
        'margin': '10px',
      });
      $('.palette').append(colorDiv);
      $('.palette').animate({ height: '100px' });
  });
}



$(function() {
  $('.color-generator').on('click', function() {
      function errorCallback(data) {
        console.log(data);  
      }

      function successCallback(data) {
        $.each(data, function(index, colorPalette) {
          var palettes = $('.palettes');
          var paletteButton = $('<button>').html(colorPalette.title);
          paletteButton.on('click', showPalette);
          paletteButton.data('colors', colorPalette.colors.join(','));

          palettes.append(paletteButton);
         

        })


      }
      $.ajax({
        url: '/palettes.json',
        success: successCallback,
        error: errorCallback
      })
  });
});