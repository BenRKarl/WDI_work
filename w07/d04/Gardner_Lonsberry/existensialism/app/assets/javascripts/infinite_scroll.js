var $window   = $(window),
    $document = $(document);

function scrollHandler(collection){
  
  if ($window.height() + $window.scrollTop() >= $document.height()){
    collection.fetch();
  }
}

$(function(){
  var quoteCollection = new QuoteCollection();
  quoteCollection.fetch();
    $window.scroll(function(){
    scrollHandler(quoteCollection);
  });


  $window.change(function(){
    console.log("window scrolltop", window.scrollTop());
    console.log("window", window.height());
  })
})