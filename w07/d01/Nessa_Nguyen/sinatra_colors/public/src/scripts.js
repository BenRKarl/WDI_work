
function setEventHandlers(){
  var button = $('.new-palettes')[0];
  $(button).click(function(){ 
    ajaxLoad('/palettes.json', displayPalettes);
  });

  var randPalette = $('.random-palette')[0];
  $(randPalette).click(function(){
    ajaxLoad('/random.json', fillPalette);
  });
}

function ajaxLoad(url, callback) {
  $.ajax({
    url: url,
    dataType: 'json',
    success: callback
  })
}

function displayPalettes(data) {
  $('.fill').empty();
  $('.fill-name').empty();
  var resultArray = data;
  for (var i = 0; i < resultArray.length; i++) {
    var paletteLink = $('<a>').attr('href', resultArray[i].url).html(resultArray[i].title);  
    var paletteName = $('<p>').append(paletteLink);
    var colorUl = $('<ul>').addClass('color-list');
    colorUl.append(paletteName);
    $('.fill').append(colorUl); 

    var colorArray = resultArray[i].colors;    
    for (var j = 0; j < colorArray.length; j++) {
      var color = '#' + colorArray[j]; 
      var colorLi = $('<li>').html('<span>'+color+'</span>');
      colorLi.css('background-color', color);
      colorUl.append(colorLi); 
    }

    if (colorArray.length < 5) { 
      for (var n = 0; n < 5 - colorArray.length; n++) {
        var emptyLi = $('<li>').html('<span>&nbsp;</span>');
        colorUl.append(emptyLi);          
      }
    }    
  }
}

function fillPalette(data) {
  $('.fill').empty();
  $('.fill-name').empty();
  var title = $('<h2>').html(data[0].title);
  $('.fill-name').append(title);
  var colorArray = data[0].colors;
  for (var i = 0; i < colorArray.length; i++) {
    var newLi = $('<div>').html('&nbsp;').addClass('fill-color').css('background-color', '#'+colorArray[i]);
      $('.fill').append(newLi);
  }
}

$(function(){
  setEventHandlers();
});
