function scrollHandler(collection){
  if ($(window).height() + $(window).scrollTop() >= $(document).height()-200)
    collection.fetch();
}

// function scrollContinuer(collection){
//     if ($(window).height() + $(window).scrollTop() == $(document).height()
//     collection.fetch();
// }


$(function(){
  var quoteCollection = new QuoteCollection();
    quoteCollection.fetch();
    $(window).scroll(function(){
      scrollHandler(quoteCollection);
    })
})

$(window).scroll(function() {
  if($(window).scrollTop() + $(window).height() == $(document).height()) {
  var quoteCollection = new QuoteCollection();
    quoteCollection.fetch();
     $(window).scroll(function(){
      scrollHandler(quoteCollection)
     })
  }
});
