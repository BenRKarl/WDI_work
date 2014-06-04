
function displayResults(data) {
  for (var i = 0; i < data.length; i++) {
      console.log(data[i]);
      var paletteDiv = $('<div>').html(data[i].title)
      paletteDiv.css({'font-family': 'helvetica',
                      float:'left',
                      margin: '10px',
                      padding: '15px'})
         for (var j = 0; j < data[i].colors.length; j++){
          color = "#" + data[i].colors[j];
          var colorDiv = $('<div>').css({
            'background-color': color,
            height: '20px',
            width: '100px'});
          $(paletteDiv).append(colorDiv);
        }

      $('.palette-list').append(paletteDiv);
    }
}

function getJSONdata () {
  $.ajax({
      url: '/palettes.json'}).success(function(data) {displayResults(data)
  })
}

function setEventHandlers () {
  var button = $('.random-palettes')[0];
   $(button).click(function(){
   getJSONdata();
 })
}

$(function(){
  setEventHandlers();
});



