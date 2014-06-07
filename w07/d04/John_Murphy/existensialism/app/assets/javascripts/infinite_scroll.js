// var  $window   = $(window),
//      $document = $(document);

// function scrollHandler(collection){
//   if ($window.height() + $window.scrollTop() >= $document.height()){
//     collection.fetch();
//   }
// }

// $(function(){
//   var paletteCollection = new PaletteCollection();
//   paletteCollection.fetch();
//   $window.scroll(function(){
//     scrollHandler(paletteCollection);
//   })

// })

var $window = $(window);
var $document = $(document);

function scrollHandler(quotes){
  if ($window.height() + $window.scrollTop() >= $document.height()){
    quotes.fetch();
  }
}

$(function(){
  var bigShow = new QuoteCollection()
  bigShow.fetch()
  $window.scroll(function(){
    scrollHandler(bigShow);
  })
})
