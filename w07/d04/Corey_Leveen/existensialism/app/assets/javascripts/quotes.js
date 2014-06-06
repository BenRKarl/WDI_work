//      model
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
  var $span = $('<span>').text(this.model.attribution).addClass('attribution');
  $div.append($span);
  $.each(this.model.text, function(i, text) {
    var $textDiv = $('<div>').html(text).css('font-family', 'Helvetica');
    $div.append($textDiv);
  })
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
    url: '?offset='+offset,
    dataType: 'json',
    success: function(data) {
      $.each(data, function(i, datum) {
        var quoteModel = new QuoteModel(datum);
        that.models.push(quoteModel);
        var quoteView = new QuoteView(quoteModel);
        $('#quotes').append(quoteView.render().el);
      });
    }
  })
}
