
function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(){ 
    ajaxLoad('/palettes.json', displayColors);
  });
}

function ajaxLoad(url, callback) {
  $.ajax({
    url: url,
    dataType: 'json',
    success: callback
  })
}

function displayColors(data) {
  var resultArray = data;
  console.log(resultArray[0]);

  for (var i = 0; i < resultArray.length; i++) {
    var paletteLink = $('<a>').attr('href', resultArray[i].url).html(resultArray[i].title);  
    var paletteName = $('<p>').append(paletteLink);
    var colorUl = $('<ul>').addClass('color-list');
    colorUl.append(paletteName);
    $('.palettes').append(colorUl); 

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

$(function(){
  setEventHandlers();
});
