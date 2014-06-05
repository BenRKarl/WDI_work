
function QuoteModel(data) {
  this.text = data.text;
  this.attribution = data.attribution;
}

function QuoteCollection() {
  this.models = [];
}

QuoteCollection.prototype.fetch = function() {
  var offset = (this.models.length % 134);
  var that = this;
  $.ajax({
    url: 'quotes/?offset='+offset,
    dataType: 'json',
    success: function(data) {
      $.each(data, function(index, quote) {
        var newQuote = new QuoteModel(quote);
        that.models.push(newQuote);
        var quoteView = new QuoteView(newQuote);
        $('#container').append(quoteView.render().el);
        $(quoteView.el).fadeIn(5000);

      });
    }
  });
}

function QuoteView(quoteModel) {
  this.model = quoteModel;
  this.el = undefined;
}

QuoteView.prototype.render = function() {
  var $textAndAttributionDiv = $('<div>', {class: "quote-div"});
  var $textDiv = $('<div>').text(this.model.text);
  var $attributionDiv = $('<div>').text(this.model.attribution);
  $textAndAttributionDiv.append($textDiv);
  $textAndAttributionDiv.append($attributionDiv);
  $textAndAttributionDiv.append($('<br>'));
  $textAndAttributionDiv.css("display", "none");
  this.el = $textAndAttributionDiv;
  return this;
}
