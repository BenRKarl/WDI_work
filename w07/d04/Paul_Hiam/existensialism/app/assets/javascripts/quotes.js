// * MODEL *

function QuoteModel(data){
  this.text = data.text;
  this.attribution = data.attribution;
}
//view
function QuoteView(model){
  this.model = model;
  this.el = undefined;
}

QuoteView.prototype.render = function(){
  var $div = $('<div>').addClass('quote');
  var $para = $('<p>').text(this.model.text).addClass('text');
  var $span = $('<span>').text(this.model.attribution).addClass('attribution');
  $div.append($para);
  $div.append($span);

  this.el = $div;
  return this;

}

//collection

function QuoteCollection(){
  this.models = [];
}

QuoteCollection.prototype.fetch = function() {
  var offset = this.models.length;
  var that = this;
  $.ajax({
    url:'/',
    dataType: 'json',
    success: function(data){
      $.each(data, function(idx, datum){
        var quoteModel = new QuoteModel(datum);
        that.models.push(quoteModel);
        var quoteView = new QuoteView(quoteModel);
        $('#container').append(quoteView.render().el);
      });
    }
  })
}