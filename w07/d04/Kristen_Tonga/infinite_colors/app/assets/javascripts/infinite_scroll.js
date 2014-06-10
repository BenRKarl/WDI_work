var $window   = $(window),
    $document = $(document);

function scrollHandler(collection){
  if ($window.height() + $window.scrollTop() >= $document.height()){
    collection.fetch();
  }
}

$(function(){
  var paletteCollection = new PaletteCollection();
  paletteCollection.fetch();
  //window.on('scroll', function(){})
  $window.scroll(function(){
    scrollHandler(paletteCollection)
  });
})
