
var $window = $(window),
    $document = $(document);

function scrollHandler(collection){
  if ($window.height() + $window.scrollTop() >= $document.height()-200){
    collection.fetch();    
  }
}

var offset = 0;

$(function(){
 
  var quoteCollection = new QuoteCollection();  
  quoteCollection.fetch();
 
  $window.scroll(function(){
    scrollHandler(quoteCollection);
  })
 
})
