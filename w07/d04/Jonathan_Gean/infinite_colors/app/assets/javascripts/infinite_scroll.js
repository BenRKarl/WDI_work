var $window = $(window),
    $document = $(document);

function scrollHandler(collection){
  $window = $(window);
  $document = $(document);
  if ($window.height() + $window.scrollTop() >= $document.height()){
    collection.fetch();
  }
}

$(function(){
    var paletteCollection = new PaletteCollection();
  paletteCollection.fetch();
  $window.scroll(function(){
    scrollHandler(paletteCollection);
  });

})
