//***** QUOTES MODEL *****
function QuoteModel(text, attribution){
  this.text = text;
  this.attribution = attribution;
}

//***** VIEW MODEL*****
function QuotesView(model){
  this.model = model;
  this.el = undefined;
}

QuotesView.prototype.render = function(){
   var $div = $('<div>').addClass('quote');
   $div.append(this.model.text);
   $div.append(this.model.attribution);
   this.el = $div;
   return this;
}

function QuotesCollection(){
  this.models = [];
}

QuotesCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/',
    dataType: 'json',
    success: function(data){
      for (var i = 0; i < data.length; i++){
        var quoteModel = new QuoteModel(data[i].text, data[i].attribution);
        that.models.push(quoteModel);
        var quotesView = new QuotesView(quoteModel);
        $('#container').append(quotesView.render().el);
      }
    },
    error: function(){ console.log('the ajax request did not succeed.') }
  });
}
