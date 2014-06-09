var $window = $(window),
	$document = $(document);

function scrollHandler(){
	if ($window.height() + $window.scrollTop() >= $document.height()){
		collection.fetch();
	}
}

$(function(){
	var quoteCollection = new quoteCollection();
	quoteCollection.fetch();
	//$window.on('scroll', function())
	$window.scroll(function(){
		scrollHandler(quoteCollection);
	})
})