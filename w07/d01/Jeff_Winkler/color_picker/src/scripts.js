

var colorsApi = {
  callback: function(data) {
    console.log(data);
  },
  request: function(callback) {
    callback = callback || this.callback;
    $.ajax({
      url: 'http://www.colourlovers.com/api/palettes/new?format=json',
      success: callback
    });
  }
}




/*
function setEventHandlers(){
  button = $('.random-palettes')[0];
  //write logic to set up click event handler on button;
  console.log(button);
  button.on('click', function(e) {
    colorsApi.request();
    return false;
  });
}

$(function(){
  setEventHandlers();
});
*/
