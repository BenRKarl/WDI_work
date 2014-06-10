// MODEL
function CardModel(cardJSON) {
  this.name = cardJSON.name;
  this.suit = cardJSON.suit;
  this.id = cardJSON.id
}

// VIEW
function CardView(model){
  this.model = model;
  this.el = undefined;
}

CardView.prototype.render = function(){
  var $div = $('<div>').addClass('card').addClass(this.model.suit);
  var $topLeft = $('<div>').addClass('top left').html("&" + this.model.suit + ";" + " " + this.model.name );
    var $topLeft = $('<div>').addClass('top left').html("&diams;")
  var $bottomRight = $('<div>').addClass('bottom right').text(this.model.suit + " " + this.model.name );
  $div.append($topLeft, $bottomRight);
  this.el = $div;
  return this;
}

// COLLECTION

function CardController() {
  this.models = [];
}

CardController.prototype.fetch = function(){
  var that = this
  $ajax({
    url: '/cards',
    dataType: 'json'
    success: function(data){
      console.log(data)
      $.each(data, function(i, datum){
        var cardModel = new CardModel(datum);
        var cardView = new CardView(cardModel);
        this.models.push(cardModel);
        $(.showCards).append(cardViews.render().el);
      })
    }
  })

}





// AUTO RUN
$(function(){
  var collection = new CardCollection();
  $('.showCards').click(function(){
    collection.fetch();
  })
  showCards();
})
