function QuoteModel(data) {
  this.title  = data.title;
  this.quotes = data.quotes;
}

function QuoteView(model) {
  this.model = model;
  this.el    = undefined;
}

QuoteView.prototype.render = function() {
  var $div  = $('<div>').addClass('quote');
  var $span = $('<span>').text(this.model.title).addClass('title');
  $div.append($span);
  $.each(this.model.quotes, function(i, quote){
    $div.append($quoteDiv)
  })
  this.el = $div
  return this; 
}

function QuoteCollection(){
  this.models = [];
}

QuoteCollection.prototype.fetch = function(){
  var that = this;
  $.ajax ({
    url: '/quotes',
    dataType: 'json',
    success: function(data){
      alert('Success');
      $.each(data, function(i, datum){
        var quoteModel = new QuoteModel(datum);
        that.models.push(quoteModel)
        var quoteView = new QuoteView(quoteModel);
        $('#container').append(quoteView.render().el);
      });
    }
  })
}