function Card(card){
  this.name = card.name;
  this.suit = card.suit;
  this.id = card.id;  
}

function CardView(model){
  this.model = model;
  this.el = undefined;
}

CardView.prototype.render = function(){
  var $div = $('<div>').html(this.model.name + " " + this.model.suit).addClass('card').addClass(this.model.suit);
  if (this.model.suit === "diamonds"){
    var $topLeft = $('<div>').addClass('top left').html("&diams;"+)" "+this.model.name); 
  var$bottomRight = $('<div>').addClass('bottom Right').html("&diams;")" "+this.model.name);
}else{
  var$topLeft = $('<div>').addClass('top left').html("&"+)" "+this.model.name); 
  var$bottomRight = $('<div>').addClass('bottom Right').html("&")" "+this.model.name);
}
  this.el = $li;
  return this;
}

function CardsCollection(){
  this.models = [];
}

CardsCollection.prototype.add = function(cardJSON){
  var newCard = new Card(cardJSON);
  this.models[cardJSON.id] = newCard;
  // $(this).trigger('addFlare');     // shoot up in the air that add flare
  return this;
}

CardsCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/cards',
    dataType: 'json',
    success: function(data){
      $.each(data, function(i, datum){
         var card = new Card(datum);
         that.models.push(card);
         var cardView = new CardView(card);
         $('#cards').append(cardView.render().el);
      })     
    }
  })
}

function refreshCardsList(){

  $('.cards').html('');

  for(idx in cards.models){
    var card = cards.models[idx];
    var cardView = new CardView(card);
    $('.cards').append(cardView.render().el);
  }
}

var cards = new CardsCollection();

$(function(){

  $('.cards-form').on('submit', function(e){
    e.preventDefault();
    cards.fetch(); 
    refreshCardsList();   
  })

})