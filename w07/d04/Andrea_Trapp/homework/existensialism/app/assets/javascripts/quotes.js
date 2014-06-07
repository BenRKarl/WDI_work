// ***********   Model    *****************
function QuoteModel(data){
  this.text = data.text;
  this.attribution = data.attribution;
}

// ************   View   ******************
function QuoteView(model){
  this.model = model;
  this.el = undefined;
}

QuoteView.prototype.render = function(){
  var $div = $('<div>').addClass('quote'); 
  var $text = $('<span>').text(this.model.text).addClass('text');
  $div.append($text);   
  var $attr = $('<span>').text(this.model.attribution).addClass('attribution');
  $div.append($attr).fadeIn(1500);   
  this.el = $div;
  return this;
}

//*************   Collection   ***************
function QuoteCollection(){
  this.models = [];
}

QuoteCollection.prototype.fetch = function(){
  // make the scrolling truly infinite
  if (offset >= this.models.length){
    offset = 0;
    this.models = [];
  } else {
    offset = this.models.length;
  }
  
  var that = this;

  $.ajax({
    url: 'quotes/?offset='+offset,
    dataType: 'json',
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


