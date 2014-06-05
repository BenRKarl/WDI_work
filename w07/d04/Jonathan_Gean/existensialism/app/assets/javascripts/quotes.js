function QuoteModel(data){
  this.quote = data.text;
  this.attribution = data.attribution;
}

function QuoteView(model){
  this.model = model;
  this.el    = undefined;

}

QuoteView.prototype.render = function(){
  var $div = $('<div>').addClass('quote');
  var $span = $('<span>').text(this.model.quote + "  " + this.model.attribution).addClass('quotespan').fadeIn(5000);
  $div.append($span);
  // $.each(this.model.colors, function(i, color){
  //   var $colorDiv = $('<div>').text(color).css('background-color', '#'+color);
  //   $div.append($colorDiv);
  // })
  this.el = $div
  return this
}

function QuoteCollection(){
 this.models = [];
}

QuoteCollection.prototype.fetch = function(){
  var offset = this.models.length;
  var that = this
  console.log(offset)
  $.ajax({
    url: 'quotes/?offset='+offset,
    dataType: 'json',
    success: function(data){
      $.each(data, function(i, datum){
        var quoteModel = new QuoteModel(datum);
        that.models.push(quoteModel);
        var quoteView = new QuoteView(quoteModel);
        $('#quotes').append(quoteView.render().el);
      });
     }
  })
}
