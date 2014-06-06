var $window = $(window), $document = $(document)

function scrollHandler(collection){
  if ($window.height() + $window.scrollTop() >= $document.height() ) {
    collection.fetch();
  }
}

$(function(){
  var quotesCollection = new QuotesCollection();
  quotesCollection.fetch();
  $window.scroll(function(){
    scrollHandler(quotesCollection);
  })
})
