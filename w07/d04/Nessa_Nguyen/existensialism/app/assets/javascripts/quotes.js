function QuoteModel(data){
  this.text = data.text;
  this.attribution = data.attribution;
}

function QuoteView(model){
  this.model = model;
  this.el    = undefined;
}

QuoteView.prototype.render = function(){
  var newEl = $('<div>').addClass('quote').html('<p>'+this.model.text+'</p>');
  var attribution = $('<span>').text(this.model.attribution)
  newEl.append(attribution);
  this.el = newEl;
  return this;    
}

function QuoteCollection(){
  this.models = [];
}

QuoteCollection.prototype.fetch = function(){
  var offset = this.models.length;
  var that   = this;
  $.ajax({
    url: 'quotes/?offset='+offset,
    dataType: 'json',
    success: function(dataArray){
      $.each(dataArray, function(i, data){
        var quoteModel = new QuoteModel(data);
        that.models.push(quoteModel);
        var quoteView = new QuoteView(quoteModel);
        $('#container').append(quoteView.render().el);
      })
    }
  })
}
