var $window = $(window),
$document = $(document);

function scrollHandler(collection){


if ($window.height() + $window.scrollTop() >= $document.height()-200) {
collection.fetch();
  }

};

$(function(){

  var paletteCollection = new PaletteCollection();//doesnt take any arguments
  //if you want to pass an argument to a callback function you have to wrap it in an argument that doesn't get called????check.
  paletteCollection.fetch();
  //give me the 1st five right when the page loads
  $window.scroll(function(){
      scrollHandler(paletteCollection);
  });



})
