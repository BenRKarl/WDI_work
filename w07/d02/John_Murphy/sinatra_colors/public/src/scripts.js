
// // # Color Picker

// // Let's recreate an application, something like
//  // [this](https://kuler.adobe.com/explore/random/?time=month) one.  You will find starter files included in your directory.

// // Leveraging the power of jQuery's `.ajax` function, you will
// // make a request to this url when a button is clicked:

// // `http://www.colourlovers.com/api/palettes/new?format=json`

// // This response will be an array of JSON objects, each
// // corresponding to a color palette.

// // // You will need to define a `success` callback that parses
// // the JSON response and produces / appends the necessary
// //  markup to display the color palettes.

// // // ---


// function setEventHandlers(){
//   var button = $('.random-palettes')[0];
//   $(button).click(function(){
//     console.log("something is happening");
//     displayColors()
//   });
// }


// function buildDivs(data){
//     $('.bContainer').html("")
//     $.each(data, function(index, object) {
//       var colorsArray = object.colors
//       var container = $('<div>').addClass('container')

//       $.each(colorsArray, function(index, color) {
//         var newDiv = $('<div>').addClass('square').css('backgroundColor', '#' + color)
//         container.append(newDiv)
//       })

//       $('.bContainer').append(container)
//     })

//     }




// function displayColors() {
//   $.ajax({
//     url: '/palettes.json',
//     success: buildDivs
//   })

// }
// $(function(){
//   setEventHandlers();
// });

function showPalette(element) {
  var colors = $(this).data('colors').split(',');
  $('.palette').html('')
  $.each(colors, function(index, color) {
    var colorDiv = $('<div>').css({
      'width': '100px',
      'height': '100px',
      'background-color': '#' + color ,
      'display': 'inline-block',
      'margin': '10px'
    });
    $('.palette').append(colorDiv)
  })
}



$(function(){
  $('.color-generator').on('click', function() {

    function errorCallback(data) {
      console.log(data);
    }
    function successCallback(colorPalettes) {
     var palettes = $('.palettes').html('');
      $.each(colorPalettes, function(index, colorPalette){

        var paletteButton = $('<button>').html(colorPalette.title);
        paletteButton.data('colors', colorPalette.colors.join(','));
        paletteButton.on('click', showPalette);
        palettes.append(paletteButton)
        console.log(colorPalette.id)
      }
     )}
    $.ajax({
      url: '/palettes.json',
      success: successCallback,
      error: errorCallback
    })
  })
})