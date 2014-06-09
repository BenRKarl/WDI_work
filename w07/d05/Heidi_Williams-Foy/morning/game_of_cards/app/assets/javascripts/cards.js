// ** MODEL ** ||

function CardModel(data){
  this.name = data.suit;
}

function CardView(model){
  this.model = model;
  this.el    = undefined;
}

/**View**/


CardView.prototype.render = function(){
  var $div = $('<div>').addClass('card');
  var $span = $('<span>').
  $div.append($span);
  $.each(this.model, function(i, quote){
    var $cardDiv = $('<div>').text(quote);
    $div.append($quoteDiv);
    $("body").append($div);
  })
  this.el = $div
  return this;
}




















QuoteView.prototype.render = function(){
  var $div = $('<div>').addClass('quote');
  var $span = $('<span>').text(this.model.attribution).addClass('attribution');
  $div.append($span);
  $.each(this.model, function(i, quote){
    var $quoteDiv = $('<div>').text(quote);
    $div.append($quoteDiv);
    $("body").append($div);
  })
  this.el = $div
  return this;
}

function QuoteCollection(){
  this.models = [];
}

QuoteCollection.prototype.fetch = function(){
  var offset = this.models.length;
  var that = this;
  $.ajax({
      url: '/?offset='+offset, 
      dataType: 'json',
      success: function(data){
        $.each(data, function(i, datum){
          var quoteModel = new QuoteModel(datum);
          x = quoteModel
          that.models.push(quoteModel);
          var quoteView = new QuoteView(quoteModel);
          $('#quotes').append(quoteView.render().el);

        });
      }
  })
}