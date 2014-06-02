
function getPalettes(callback) {
  $.ajax({
    url: '/palettes.json',
    success: callback
  });
}

function verifyData(data) {
  //console.log(data[0].colors);
  $.each(data, function(index, value) {
    var paletteDiv = $('<div>');
    //$(paletteDiv).css({"height":"80px", "width":"300px", "background-color":"blue"});
    $(paletteDiv).css("margin", "10px");
    $(paletteDiv).css("display", "inline-block");
    $(paletteDiv).html(value.title);
    $('.container').append(paletteDiv);
    console.log(value.title);
    $.each(value.colors, function(i, color) {
      var currColor = ('#'+color);
      var colorDiv = $('<div>');
      $(colorDiv).css({"height":"80px", "width":"60px", "background-color":currColor});
      $(colorDiv).css("display", "inline-block");
      $(paletteDiv).append(colorDiv);
    });
  });
}


function setEventHandlers(){
  var button = $('.random-palettes')[0];
  //$(button).click(getPalettes(verifyData));
  $(button).on('click', function() {
  getPalettes(verifyData);
  });

}

$(function(){
  setEventHandlers();
});
