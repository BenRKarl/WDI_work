
function CardModel(jsondata){
  this.name = jsondata.name;
  this.suit = jsondata.suit;
}



function CardView(model){
  this.model = model;
  this.el = undefined;
}

CardView.prototype.render = function(){
  var $div = $('<div>').addClass('card').addClass(this.model.suit);
  var $topLeft = $('<div>').addClass('top left').text(this.model.suit+' '+ this.model.name)
  var $bottomRight = $('<div>').addClass('bottom right').text(this.model.suit+' '+ this.model.name)
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
    url:'/cards',
    dataType: 'json',
    success: function(data){
      $.each(data, function(idx, datum){
        var cardModel = new CardModel(datum);
        that.models.push(cardModel);
        var cardView = new CardView(cardModel);
        $('#cards').append(cardView.render().el);
      });
    }
  });
}


$(function(){
  var collection = new CardCollection;
  $('#show-cards').click(function(){
    collection.fetch();
  });
})


// //model
// function CardModel(data){
//   this.name = data.name;
//   this.suit = data.suit;
// }

// //view
// function CardView(model){
//   this.model = model;
//   this.el    = undefined;
// }

// CardView.prototype.render = function(){
  
//   var $li = $('<li>').addClass('card').html(this.model.name + ' of ' + this.model.suit);

//   this.el = $li;
//   return this;

// }

// //collection
// function CardsColleciton(){
//   this.models = [];
// }
// CardsColleciton.prototype.fetch = function() {

//   var that = this;
//   $.ajax({
//     url:'/',
//     dataType: 'json',
//     success: function(data){
//       $.each(data, function(idx, datum){
//         var cardModel = new CardModel(datum);
//         that.models.push(cardModel);
//         var cardView = new CardView(
//           cardModel);
//         $('#cardUL').append(cardView.render().el);

//       });
//     }
//   })
// }