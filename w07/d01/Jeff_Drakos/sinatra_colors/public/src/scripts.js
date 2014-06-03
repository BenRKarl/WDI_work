function getPalettes(callback){
  $.ajax({
    url: '/palettes.json',
    dataType: 'json',
    success: callback
  })
  return this;
}

function makeDiv(data){
  $.each(data, function(index, palette){
    var divPaletteHolder = $('<div>');
    var mainDiv = $('.palette');
    $(mainDiv).append(divPaletteHolder);

    $.each(palette.colors, function(index, color){

      var divColorHolder = $('<div>');
      var currentHex = "#" + color;
      $(divColorHolder).css("background-color", currentHex);
      $(divPaletteHolder).append(divColorHolder);
      $(divColorHolder).css({
        "height" : "40px",
        "width" : "40px",
        "display" : "inline-block"
      });
    });
  });
}

function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(){
    getPalettes(makeDiv);
  });
}

$(function(){
  setEventHandlers();
});
