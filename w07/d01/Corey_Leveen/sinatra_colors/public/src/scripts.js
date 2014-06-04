
function setEventHandlers() {
  var button = $('.random-palettes')[0];
  $(button).click(function() {
    $.ajax({
      url: '/palettes.json'
    }).success(function(data) {
      console.log(data);
      console.log(data.length);
      console.log(data[0]);
      console.log(data[0].colors[0]);
      for (var i = 0; i < data.length; i++) {
        var colorMainDiv = $('<div>').html(data[i].title).addClass('color-main-div');
        $('.master').append(colorMainDiv);
        for (var z = 0; z < 5; z++) {
          var colorSubDiv = $('<div>').css('background-color', '#'+data[i].colors[z]).addClass('color-sub-div');
          $(colorMainDiv).append(colorSubDiv);
        }
      }
    })
  })
}

$(function(){
  setEventHandlers();
});
