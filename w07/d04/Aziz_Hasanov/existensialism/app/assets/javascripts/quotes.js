
function QuoteModel(data) {
  this.text = data.text;
  this.attribution = data.attribution;
  // console.log("hello, world")
}

//////////////////////////////
function QuoteView(model) {
  this.model = model;
  this.el = undefined;
}
//////////////////////////////

QuoteView.prototype.render = function() {
  var $article = $("<article>").html(this.model.text);
  var $pTag = $("<p>").html(this.model.attribution);
  $("div").append($article);
  $("div").append($pTag);
  // $.each(this.model.quotes, function(index, quote) {

  // })
  this.el = $article;
  return this;
}

function QuoteCollection() {
  this.models = [];/////////////////////////////
}

QuoteCollection.prototype.fetch = function() {
  var offset = this.models.length; /////////////////////////////////
  var that = this;////////////////////////////////
  $.ajax({
    url: "/",
    dataType: "json",
    success: function(data) {
      $.each(data, function(i, elem){
        var quoteModel = new QuoteModel(elem);
        that.models.push(quoteModel);
        var quoteView = new QuoteView(quoteModel);
        $("div").append(quoteView.render().el);
      })
    }
  })
}


collection = new QuoteCollection();
collection.fetch();


