function setEventHandlers() {
  var button = $('.random-palettes')[0];
  $(button).click(function() {
    $.ajax({
      url: '/palettes.json'
    }).success(function(data) {
      for (var i = 0; i < data.length; i++) {
      var colorMainDiv = $('<div>').html(data[i].title).addClass('color-main-div');
        for (var z = 0; z < 5; z++) {
        var colorSubDiv = $('<div>').css('background-color', data[i].colors[z]);
        $(colorMainDiv).append(colorSubDiv);
        }
      }
    })
  }
}

$(function(){
  setEventHandlers();
});
