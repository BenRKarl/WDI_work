// QuoteModel - QuoteView - QuoteCollection

function QuoteModel(quoteJSON){
  this.attribution = quoteJSON.attribution;
  this.text        = quoteJSON.text;
}


function QuoteView(quoteModel){
  this.model = quoteModel
  this.el = undefined

}

QuoteView.prototype.render = function(){
  var quoteContents = this.model.text + this.model.attribution;
  var newQuote = $('<h1>').text(quoteContents).attr('class', 'h1').css('opacity', 0)
  this.el = newQuote
  return this
}

function QuoteCollection() {
  this.models = []
}



QuoteCollection.prototype.fetch = function(){
  offset = this.models.length
  that = this
  $.ajax({
    url: '/?offset='+offset,
    dataType: 'json',
    success: function(data){
      $.each(data, function(index, quoteObject){
        var quoteModel = new QuoteModel(quoteObject)
        that.models.push(quoteModel)
        var quoteView = new QuoteView(quoteModel)
        $('#container').append(quoteView.render().el)
        $('.h1').animate({
          opacity: 1}, 5000)

      })
    }

  })
}

