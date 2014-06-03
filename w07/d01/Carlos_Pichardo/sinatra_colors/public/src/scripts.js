
function obtainPalettes(callback) {
  $.ajax({
    url: '/palettes.json',
    success: callback
  });
}

function dataCheck(data) {
  
  $.each(data, function(index, value) {
    var oneDiv = $('<div>');
    $(oneDiv).css("margin", "5px");
    $(oneDiv).css("display", "inline-block");
    var topDiv = $('<div>');
    $(topDiv).html(value.title);
    $(topDiv).css({"color":"lightgrey", "font-style":"italic"});
    $(oneDiv).append(topDiv);
    $('.container').append(oneDiv);
    console.log(value.title);
    $.each(value.colors, function(i, color) {
      var oneColor = ('#'+color);
      var colorDiv = $('<div>');
      $(colorDiv).css({"height":"70px", "width":"70px", "background-color":oneColor});
      $(colorDiv).css("display", "inline-block");
      $(oneDiv).append(colorDiv);
    });
  });
}


function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).on('click', function() {
  obtainPalettes(dataCheck);
  });
  $('body').css("background-color", "#444444");

}

$(function(){
  setEventHandlers();
});