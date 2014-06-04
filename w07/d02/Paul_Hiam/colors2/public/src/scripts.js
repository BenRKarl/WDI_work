function showPalette(e) {
  var colors = $(this).data('colors').split(',');
  $('.palette').html('');
  $.each(colors, function(index, color){
    var colorDiv = $('<div>').css({
      'width': '100px',
      'height': '100px',
      'background-color': '#' + color,
      'display': 'inline-block',
      'margin': '10px'
    });
    $('.palette').append(colorDiv);
  });
}

$(function(){
  $('.color-generator').on('click', function() {
    function errorCallback(data) {
      console.log(data);
    }
    function successCallback(colorPalettes) {
      var palettes = $('.palettes').html('');
      $.each(colorPalettes, function(index, colorPalette) { 
        var paletteButton = $('<button>').html(colorPalette.title);
        paletteButton.data('colors', colorPalette.colors.join(','));
        paletteButton.on('click', showPalette);
        palettes.append(paletteButton);
      });
    }
    $.ajax({
      url:'/palettes.json',
      success: successCallback,
      error: errorCallback
    });
  });

});


// function setEventHandlers(){
//   var button = $('.random-palettes')[0];
//   $(button).click(function(){
//     //ajax request
//     ajaxColors(getColor)

//   });
// }

// // def ajax req' (callback)
// function ajaxColors(callback){
//     $.ajax({
//       url: '/palettes.json',
//       dataType: 'json',
//       success: callback
      
//     })
// }


// //def getColor
// function getColor(data){
//   sets = data;
//   for (var i = 0; i < sets.length; i++){
//      var colors = sets[i].colors;
//      var name = sets[i].title
     
//     var paletteDiv = $('<div>').html(name).addClass('palette');
//       $('.swatches').append(paletteDiv)

//     for (var j = 0; j < colors.length; j++){
//       var swatchDiv = $('<div>').addClass('color-swatch').css('background-color', '#' + colors[j]).html('&nbsp;' + colors[j]);
//       paletteDiv.append(swatchDiv);
//      }
//   } 
// };



// $(function(){
//   setEventHandlers();
// });