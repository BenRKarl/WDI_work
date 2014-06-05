function QuoteModel(data) {
  this.text = data.text;
  this.attribution = data.attribution;
}

function QuoteView(model) {
  this.model = model;
  this.el = undefined;
}

QuoteView.prototype.render = function() {
  var $div = $('<div>').addClass('quote');
  var $textSpan = $('<span>').text(this.model.text).addClass('text');
  var $attrSpan = $('<span>').text(this.model.attribution).addClass('attribution');
  $div.append($textSpan).append($attrSpan).fadeIn(600);
  this.el = $div;
  return this;
}

function QuoteCollection() {
  this.models = [];
}

QuoteCollection.prototype.fetch = function() {
  var offset = this.models.length;
  var that = this;
  $.ajax({
    url: '/?offset=' + offset,
    dataType: 'json',
    success: function(data) {
      $.each(data, function(i, quote) {
        var quoteModel = new QuoteModel(quote);
        that.models.push(quoteModel);
        var quoteView = new QuoteView(quoteModel);
        $('#container').append(quoteView.render().el)
      })
    }
  })
}
