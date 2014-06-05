function QuoteModel(data){
  this.text = data.text;
  this.attribution = data.attribution;
}

function QuoteView(model){
  this.model = model;
  this.el = undefined;
}

QuoteView.prototype.render = function(){
  var $div = $('<div>').addClass('quote');
  var $textDiv = $('<div>').text(this.model.text).addClass('text');
  var $attributionDiv = $('<div>').text(this.model.attribution).addClass('attribution');
  $div.append($textDiv);
  $div.append($attributionDiv);
  this.el = $div;
  return this;
}

function QuoteCollection(){
  this.models = [];
}

QuoteCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/',
    dataType: 'json',
    success: function(data){
      $.each(data, function(i, datum){
        var quoteModel = new QuoteModel(datum);
        that.models.push(quoteModel);
        var quoteView = new QuoteView(quoteModel);
        $('#container').append(quoteView.render().el);
      })
    }
  })
}


