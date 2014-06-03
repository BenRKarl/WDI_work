
function setEventHandlers(){

   var button = $('.random-palettes')[0];
   $(button).click(function(){
      $('.palettes').remove();
      $.ajax({
         url: '/palettes.json',
         success: displayPalettes
      });
      return this;
   });
}

function displayColorBox(e){
   var colorBox = $('<div>').addClass('color-box');
   $('.container').append(colorBox);

   // console.log($(this).data().colors.length);
   
   var colorBoxArray = $(this).data().colors;
   var numColumns = $(this).data().colors.length;
   console.log(numColumns);
   var stripWidth = ((900/$(this).data().colors.length)/900)*100;
   // console.log(((900/$(this).data().colors.length)/900)*100);

   for (var i = 0; i < numColumns; i++) {
      var colorStrip = $('<div>').addClass('color-strip')
      colorStrip.css('width', stripWidth + '%');
      $(colorBox).append(colorStrip);
      colorStrip.css('background-color', '#' + colorBoxArray[i]);

   };





   $(document).mouseup(function(e){ //remove colorBox
      if (!colorBox.is(e.target) && colorBox.has(e.target).length === 0){
         $(colorBox).remove();
      };

   });
}

function displayPalettes(data){
   var containerDiv = $('.container');

   for (var i in data){

      var palettesDiv = $('<div>').addClass('palettes');
      $(containerDiv).append(palettesDiv);

      var colorsDiv = $('<div>').addClass('colors');
      colorsDiv.data('colors', data[i].colors);

      $(palettesDiv).append(colorsDiv);
      

      var colorArray = data[i].colors;

      for (var j in colorArray){
         var hueDiv = $('<div>').addClass('hue');
         $(hueDiv).css('background-color', '#' + colorArray[j] );
         $(colorsDiv).append(hueDiv);
      };

      colorsDiv.click(displayColorBox)

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



