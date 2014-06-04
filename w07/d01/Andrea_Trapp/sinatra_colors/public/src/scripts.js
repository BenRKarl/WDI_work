
var colorsApi = {
  search: function(callback){
    var callback = callback || function(data){console.log(data);};
    $.ajax({
      url: '/palettes.json',
      dataType: 'json',
      success: callback
    });
    return this;
  }  
};

function displayColorPalette(data){
    var containerDiv = $(".container");

    for (var i = 0; i < data.length; i++){

      var paletteDiv = $('<div>').addClass('palette');
      containerDiv.append(paletteDiv);


      var colorsDiv = $('<div>').addClass('colors');
      paletteDiv.append(colorsDiv);

      var colorArray = data[i].colors;

      for (var j in colorArray) {
        var hueDiv = $('<div>').addClass('hue');
        hueDiv.css('background-color', '#' + colorArray[j] );   
        colorsDiv.append(hueDiv);             
      }


      var title = data[i].title;
      var titleDiv = $('<div>').html("Title: " + title).addClass('title');
      paletteDiv.append(titleDiv);

      var userName = data[i].userName;
      var userNameDiv = $('<div>').html("Username: " + userName).addClass('userName');
      paletteDiv.append(userNameDiv);
    }
};


function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(){
    $('.palette').html('');
    colorsApi.search(displayColorPalette);
  });
}

$(function(){
  setEventHandlers();
});

