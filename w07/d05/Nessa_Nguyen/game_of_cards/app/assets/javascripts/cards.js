function CardModel(cardJson){
  this.name = cardJson.name;
  this.suit = cardJson.suit;
}

function CardView(model){
  this.model = model;
  this.el    = undefined;
}

CardView.prototype.render = function(){
  var $div = $('<div>').addClass('card').addClass(this.model.suit);
  if (this.model.suit === 'diamonds'){
    var $topLeft = $('<div>').addClass('top left').html('&diams;'+ this.model.name);
    var $bottomRight = $('<div>').addClass('top left').html('&diams;' + this.model.name);
  $div.append($topLeft, $bottomRight);    
  } else {

  var $topLeft = $('<div>').addClass('top left').html('&'+this.model.suit+';'+ this.model.name);
  var $bottomRight = $('<div>').addClass('top left').html('&'+this.model.suit+';'+ this.model.name);
  }
  $div.append($topLeft, $bottomRight);
  this.el = $div;
  return this;  
}

function CardSuit(){
  this.models = {};
}

CardSuit.prototype.display = function(data){
  for (var i = 0; i < data.length; i++){
    var cardModel  = new CardModel(data[i]);
    this.models[i] = cardModel;
    var cardView   = new CardView(cardModel);
    $('#cards').append(cardView.render().el);
  }
}

CardSuit.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/cards',
    dataType: 'json',
    success: function(data){
      that.display(data);
    }
  })
}

$(function(){
  var cardSuit = new CardSuit;
  $('#show-cards').on('click', function(){
    cardSuit.fetch();  
  });
  $('#hide-cards').on('click', function(){
    $('#cards').empty();  
  });  
})
