function CardModel(model){
  this.name = jsonData.name;
  this.suit = jsonData.suit;
}

function CardView(model){
  this.model = model;
  this.el = undefined;
}

CardView.prototype.render = function(suit, name){
  var $div = $('<div>').addClass('card').addClass(this.model.suit);
  if (this.model.suit === "diamonds"){
    var $topLeft = $('<div>').addClass('top left').html("&diams;"+this.model.suit + " " + this.model.name);
    var $bottomRight = $('<div>').addClass('bottom right').html("&diams;" + " " + this.model.name);
  } else {
    var $topLeft = $('<div>').addClass('top left').html("&"+this.model.suit+";"+" "+this.model.name);
    var $bottomRight = $('<div>').addClass('bottom right').html("&" + this.model.suit + ";" + " " + this.model.name);
  }
  $div.append($topLeft, $bottomRight);
  this.el = $div;
  return this;
}

function CardCollection(){
  this.models = [];
}

CardCollection.prototype.fetch = function(){
  console.log("fetch called")
  var that = this;
  $.ajax({
    url: '/cards',
    dataType: 'json',
    success: function(data) {
      $.each(data, function(i, datum){
  console.log("Making cards")
        var cardModel = new CardModel(datum);
        that.models.push(cardModel);
        var cardView = new CardView(cardModel);
        console.log("Making cards")
        $('#cards').append(cardView.render().el);
      });
    }
  })

}


$(function(){
   var collection = new CardCollection();
  $('.deal').click(function(){
  console.log("button clicked")
    collection.fetch();
  });
})


suits = ['clubs', 'spades', 'hearts', 'diamonds']
names = ['ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'jack', 'queen', 'king']

def flush
  hand = []
  5.times do
    card = []
    card << suits.sample
    hand << names.sample
    print hand
  end
end
