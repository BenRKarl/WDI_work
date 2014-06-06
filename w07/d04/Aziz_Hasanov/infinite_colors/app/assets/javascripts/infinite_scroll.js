
var $window = $(window);
var $document = $(document);

function scrollHandler() {
  if ($window.height() + $window.scrollTop() >= $document.height()) {
    collection.fetch();
  }
}

$(function() {
  var paletteCollection = new PaletteCollection();
  paletteCollection.fetch();
  $window.scroll(function() { // same as $window.on("scroll", function(){})
    scrollHandler(paletteCollection);
  });
})