function CardModels(data) {
  this.name = data.name;
  this.suit = data.suit;
}

function CardView(model) {
  this.model = model;
  this.el = undefined;
}

CardView.prototype.render = function() {
  var $div = $("<div>").addClass("card").addClass(this.model.suit);
  var $topLeft = $("<div>").addClass("top left").html("&" + this.model.suit + ";" + " " + this.model.name);
  var $bottomRight = $("<div>").addClass("bottom right").html("&diams;" + this.model.suit + " " + this.model.name);
  $div.append($topLeft, $bottomRight);
  this.el = $div;
  return this;
}

function CardCollection() {
  this.models = [];
}

CardCollection.prototype.fetch = function() {
  $.ajax({
    url: "/",
    dataType: "json",
    success: function(data) {
      // createAndRenderCards(data);
      $.each(data, function(i, card) {
        var cardModel = new CardModel(card);
        that.models.push(cardModel);
        var cardView = new CardView(cardModel);
        $("#cards").append(cardView.render().el);
      })
    }
  })
}



$(function() {
  $("button").click(function() {
    collection.fetch();
  })
})