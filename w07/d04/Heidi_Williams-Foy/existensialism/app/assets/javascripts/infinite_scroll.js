function scrollHandler(){
	if (window.height() + window.scrollTop() >= document.height()-200){
		collection.fetch();
	}
}

$(function(){
	var quoteCollection = new QuoteCollection();
	quoteCollection.fetch();
	//window.on('scroll', function(){})
	$(window).scroll(function(){
		scrollHandler(quoteCollection);
	});
})