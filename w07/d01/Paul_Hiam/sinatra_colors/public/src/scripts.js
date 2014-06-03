
function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(){
    //ajax request
    ajaxColors(getColor)

  });
}

// def ajax req' (callback)
function ajaxColors(callback){
    $.ajax({
      url: '/palettes.json',
      dataType: 'json',
      success: callback
      
    })
}


//def getColor
function getColor(data){
  sets = data;
  for (var i = 0; i < sets.length; i++){
     var colors = sets[i].colors;
     var name = sets[i].title
     
    var paletteDiv = $('<div>').html(name).addClass('palette');
      $('.swatches').append(paletteDiv)

    for (var j = 0; j < colors.length; j++){
      var swatchDiv = $('<div>').addClass('color-swatch').css('background-color', '#' + colors[j]).html('&nbsp;');
      paletteDiv.append(swatchDiv);
     }
  } 
};



$(function(){
  setEventHandlers();
});