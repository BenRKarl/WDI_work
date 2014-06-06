var $window = $(window),
    $document = $(document);

function scrollHandler(collection){
   $window = $(window);
   $document = $(document);
   if ($window.height() + $window.scrollTop() >= $document.height()-200){
      collection.fetch();
   }
}

$(function() {
   var paletteCollection = new PaletteCollection();
   paletteCollection.fetch();
   $window.on('scroll', function() {
      scrollHandler(paletteCollection);
   });
})