//**************MODEL *************

function QuoteModel(data){
	this.text = data.text
	this.attribution = data.attribution;
}

//*********View**********
function QuoteView(model){
	this.model = model;
	this.el = undefined;
}

QuoteView.prototype.render = function(){
	var $div = $('<div>');
	var $span = $('<span>').text(this.model.attribution);
	$div.append($span);
	//return array of text
	$.each(this.model.text, function(i, tx){
		var $colorDiv = $('<div>').text(tx);
		$div.append($colorDiv);
	})
	this.el = $div
	return this;
}

//************* COLLECTION ****************
function QuoteCollection(){
	this.models = [];

}


QuoteCollection.prototype.fetch = function(){
	var offset = this.models.length;
	var that = this;
	$.ajax({
		url: '/' +offset,
		dataType: 'json',
		//async: false,
		success: function(data){
			$.each(data, function(i, datum){
				var quoteModel = new QuoteModel(datum);
				that.models.push(quoteModel);
				var quoteView = new QuoteView(quoteModel);
				$('#container').append(quoteView.render().el);
			});
		}
	})
}