$(function(){
  console.log('Its alright');
});

// var randomPalettesApi = {
//   request: function(callback){
//     var callback = callback || function(data){console.log(data)};
//     console.log()
//     $.ajax({
//       url: '/palettes.json',
//       success:function(data){console.log(data)}
//     });
//     return this;
//   }
// }


function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(){
    console.log("something is happenging");
    var data = $.ajax({url: '/palettes.json', success:function(data){createColorDivs(data)}});


  });
}

function createColorDivs(data){
  data.forEach(function(swash, index){
    var title = data[index].title;
    var arrOfColor = data[index].colors;

    var paletteDiv = $('<div>').addClass("small-2 columns palette");
    var titleHeader = $('<h3>').html(title);
    $( ".palettes").append(paletteDiv);
    $(paletteDiv).append(titleHeader);

    arrOfColor.forEach(function(color, index){
      var colorBox = $('<div>').css('background-color', "#" + color).css('width', '150px').css('height', '150px');
      $(paletteDiv).append(colorBox);
    });

  })
}


// var colorPickerApi = {
//   request: function(){
//     var callback = callback || function(data){console.log(data)};
//     $.ajax({url: '/palettes.json', success:function(data){console.log(data)}})
//     success: callback;
//   }
// }

$(function(){
  setEventHandlers();

});

