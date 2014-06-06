//******** MODEL ***********
function QuoteModel(data){
  this.text = data.text;
  this.attribution = data.attribution;
}

function QuoteView(model){
  this.model = model;
  this.el    = undefined;
}

QuoteView.prototype.render = function(){
  var $div = $('<div>').addClass('sentence');
  var $span = $('<span>').text(this.model.text + " " + this.model.attribution);
  $div.append($span);
  // $.each(this.model.attribution, function(i , value){
  //   var $sentenceDiv = $('<div>').text(value);
  //   $div.append($sentenceDiv);
  // })
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
    url: 'quotes/?offset='+offset,
    dataType: 'json',
    success: function(data){
      $.each(data, function(i, val){
        var quoteModel = new QuoteModel(val);
        that.models.push(quoteModel);
        var quoteView = new QuoteView(quoteModel)
        $('#container').append(quoteView.render().el);
      });
    }
  })
}
