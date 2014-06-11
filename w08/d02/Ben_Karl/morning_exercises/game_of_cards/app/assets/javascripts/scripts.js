
function CardModel(jsonData){
  this.name = jsonData.name;
  this.suit = jsonData.suit;
}

function CardView(model){
  this.model = model;
  this.el = undefined;
}

CardView.prototype.render = function(){
  var $div = $('<div>').addClass('playing-card').addClass(this.model.suit);
  var $topLeft = $('<div>').addClass('top left').text(this.model.name + " " + this.model.suit);
  var $bottomRight = $('<div>').addClass('bottom right').text(this.model.name + " " + this.model.suit);
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
    url: '/',
    dataType: 'json',
    success: function(data){
      $.each(data, function(i, datum){
        var cardModel = new CardModel(datum);
        that.models.push(cardModel);
        var cardView = new CardView(cardModel);
        $('.card-list').append(cardView.render().el);
      });
    }
  })
}

$(function(){
  var collection = new CardCollection();
  $('.cards').click(function(){
    collection.fetch();
  });
})



// function CardModel(name, suit){
//   this.name = name;
//   this.suit = suit;
//   this.el = undefined;
// }

// function CardCollection(model){
//   this.models = [];
// }


// $('.card').on('click', function(){
//   $.ajax({
//     url: '/',
//     dataType: 'json',
//     success: function(data){
//       var cardList = $('.card-list');
//       for (var i = 0; i < data.length; i++){
//         var li = $('<li>');
//         li.html(data[i].name + " " + data[i].suit);
//         cardList.append(li);
//       }
//     }
//   });
// }
