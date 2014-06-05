// **** MODEL ****
function QuoteModel(data){
  this.text         = data.text;
  this.attribution  = data.attribution;
}

// **** VIEW ****
function QuoteView(model){
  this.model  = model;
  this.el     = undefined;
}

QuoteView.prototype.render = function(){
  var $div  = $('<div>').addClass('quote');
  $div.text(this.model.text)
  var $span = $('<span>').text(this.model.text).addClass('text');
  $div.append($span);
  var $attr = $('<div>').text(this.model.attribution);
    $div.append($attr);

  this.el = $div;
  return this;
}
// **** COLLECTION ****
function QuoteCollection(){
  this.models =[];
}

QuoteCollection.prototype.fetch = function(){
  var offset = this.models.length
  var that = this;
  $.ajax({
    url: "quotes/?offset="+offset,
    dataType: "json",
    success: function(data){
      $.each(data, function(i, datum){
        var quoteModel = new QuoteModel(datum);
        that.models.push(quoteModel);
        var quoteView = new QuoteView(quoteModel)
        $('#container').append(quoteView.render().el)
      });
    }
  })
}


var start = new QuoteCollection();
start.fetch();
