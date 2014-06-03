function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $('.random-palettes').on('click', function() {
    $.ajax({
      url:'/palettes.json',
      success: displayColors
    });
  });
}

$(function(){
  setEventHandlers();
});

function displayColors(data){
  var colorArray = data[0].colors;
  $.each(colorArray, function(idx, color) {
    $('<div>').css("background-color", colorArray);
  });

};
