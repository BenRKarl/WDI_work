
function setEventHandlers(){

   var button = $('.random-palettes')[0];
   $(button).click(function(){
      $('.palettes').html('');
      $.ajax({
         url: '/palettes.json',
         success: displayPalettes
      });
      return this;
   });
}

function displayPalettes(data){
   var containerDiv = $('.container');
   console.log(data);
   for (var i in data){

      var palettesDiv = $('<div>').addClass('palettes');
      $(containerDiv).append(palettesDiv);

      var colorsDiv = $('<div>').addClass('colors');
      $(palettesDiv).append(colorsDiv);

      var colorArray = data[i].colors;

      for (var j in colorArray){
         var hueDiv = $('<div>').addClass('hue');
         $(hueDiv).css('background-color', '#' + colorArray[j] );
         $(colorsDiv).append(hueDiv);
      };

      var title = data[i].title;
      var titleDiv = $('<div>').addClass('title').html('Title: ' + title);
      $(palettesDiv).append(titleDiv);

      var creator = data[i].userName;
      var creatorDiv = $('<div>').addClass('creator').html('Creator: ' + creator);
      $(palettesDiv).append(creatorDiv);

   };

}

$(function(){
  setEventHandlers();
});



//tite, username, colors[0..4]