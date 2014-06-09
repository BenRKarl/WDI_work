function QuoteModel(data) {
  this.quote = data.text;
  this.author = data.attribution;
}

function QuoteView(model) {
  this.model = model;
  this.el = undefined;
}

QuoteView.prototype.render = function () {
  var $div = $('<div>').addClass('quote');
  var $span = $('<span>').text(this.model.quote).addClass('text');
  var $attr = $('<p>').text(this.model.author).addClass('attribution');
  ;
  $div.append($span);
  $div.append($attr);
  this.el = $div
  return this;
}

function QuoteCollection(){
  this.models = [];
}

QuoteCollection.prototype.fetch = function(){
  var offset = this.models.length
  var that = this;
  $.ajax({
    url: 'quotes/?offset' + offset,
    dataType: 'json',
    success: function(data){
      $.each(data, function(i, datum){
        var quoteModel = new QuoteModel(datum);
        that.models.push(quoteModel);
        console.log(that.models)
        var quoteView = new QuoteView(quoteModel);
        $('#container').append(quoteView.render().el);
      })
    }
  })
}

