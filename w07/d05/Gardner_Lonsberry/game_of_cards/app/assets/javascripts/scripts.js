// function CardModel(data) {
//   this.name = name;
//   this.suit = suit
// }

// function CardView(model) {
//   this.model = model;
//   this.el    = undefined;
// }

// CardView.prototype.render = function() {
//   var $div  = $('<div>').addClass('cards div');
//   var $span = $('<span>').text(this.model.name + " " + this.model.suit).addClass('cards div');
//   $div.append($span);
//   this.el = $div
//   return this; 
// }

// function CardCollection() {
//   this.models = [];
// }

// CardCollection.prototype.fetch = function() {
//   var offset = this.models.length; 
//   var that = this;
//   $.ajax ({
//     url: '/card',
//     dataType: 'json',
//     success: function(data){
//       $.each(data, function(i, datum){
//         var cardModel = new CardModel(datum);
//         that.models.push(cardModel);
//          var cardView = new CardView(quoteModel);
//          $('#div').append(cardView.render().el);
//       });
//     }
//   })
// }



function CardView(){
  this.model = model;
  this.el = undefined;
}

CardView.prototype.render = function(){
  var $div = $('<div>').addClass('name').addClass('this.model.suit');
  var $topLeft = $('<div>').addClass('top left')
  var $bottomRight = $('<div>').addClass('bottom right').text(this.model.suit+" "this.mode.name);
  $div.append($topLeft, $bottomRight);
  this.el = $div;
  return this;
}

function CardCollection(){
  this.models = [];
}

CardCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/cards'
    dataType: 'json'
    success: function(data){
      $.each(data, function(i, datum){
        var cardModel = new CardModel(datum);
        that.models.push(cardModel);
        var cardView = new CardView(cardModel);
        $('#cards').append
      });
    }
  })
}
$(function(){
  $('#show-cards').click(function(){
    collection.fetch();;
  })
})