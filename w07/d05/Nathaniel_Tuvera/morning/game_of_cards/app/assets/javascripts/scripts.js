console.log("Game of Cards... hopefully all the cards you like don't die")
// ***** MODEL *****

function Card(cardJSON){
  this.suit   = cardJSON.suit;
  this.name   = cardJSON.name;
}
// ***** VIEW *****

// ***** COLLECTION *****

function CardsCollection(){
  this.models = {};
};

CardsCollection.prototype.add = function(cardJSON){
  var newCard = new Card(cardJSON);
  this.models[cardJSON.id] = new Card;
  return this;
}

CardsCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/cards',
    dataType: 'json',
    success: function(data){
      for (idx in data)
        that.add(data[idx])
    }
  })
}

$(function(){


})

