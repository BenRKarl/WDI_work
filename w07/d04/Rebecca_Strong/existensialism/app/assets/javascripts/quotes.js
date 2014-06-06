/***** MODEL *****/

function QuoteModel(data){

  this.text = data.text;
  this.attribution = data.attribution;

}


function QuoteView(model){
this.model = model;
this.el = undefined;
}

QuoteView.prototype.render = function() {
//this is an anonymous function

var $div = $('<div>').text(this.model.text).addClass('quote text');
//the $div is just a name, but convention dictates
//that the $ is there as a reminder that this is a jQuery object
var $span = $('<span>').text(this.model.attribution).addClass('quote attribution');
//where the first title refers to the title of the palette and the second refers tot he title of the style
$div.append($span);
//we need the colors, tho, so:
//need to set the element = to the div
this.el = $div
return this;

}

/********COLLECTION******/

function QuoteCollection() {
this.models = [];

}



QuoteCollection.prototype.fetch = function() {
  var offset = this.models.length;
  var that = this;
$.ajax({
url: 'quotes/?offset='+offset, //the root
dataType: 'json',
//async: false,
success: function(data){
  $.each(data, function(i, datum){
  //where .each requires an array ()
    var quoteModel = new QuoteModel(datum);
    that.models.push(quoteModel);
    var quoteView = new QuoteView(quoteModel);
    $('#container').append(quoteView.render().el);
  //render sets its el and then renders it

  });
}

})

}
