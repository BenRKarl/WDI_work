var $window = $(window);
var $document = $(document);

function scroller() {
  if ($window.height() + $window.scrollTop() >= $document.height()) {
    collection.fetch();
  }
}

$(function() {
  var quoteCollection = new QuoteCollection();
  quoteCollection.fetch();
  $window.scroll(function() {
    scroller(quoteCollection);
  });
})