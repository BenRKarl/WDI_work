var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ ingredient: this.model.toJSON()}));
    return this;
  }

});

var IngredientListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection,'add',this.render);
    this.listenTo(this.collection,'remove',this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});

var Juice = Backbone.Model.extend({});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({

  tagName: 'ul',
  template: _.template($("#juice-template").html()),
  render: function(){
    
   this.$el.html(this.template({ juice: this.model.toJSON()})).addClass('juice-box');

   var listView = new IngredientListView({collection: this.model.attributes.ingredients, el: $(this.el).find('ul')});


    listView.render();

    return this;
  }
});

var JuiceListView = Backbone.View.extend({

  render: function(){
    
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice){
      var juiceView = new JuiceView({ model:juice });
      that.$el.append(juiceView.render().el);
    });
    return this;
  }
});


$(function(){
  var juices = new JuiceCollection();

  var ingredients = new IngredientCollection();
  var strawberry = new Ingredient({name: 'strawberry', amount: 13});
  var cabbage = new Ingredient({name: 'cabbage', amount: 1 });

  var tumeric = new Ingredient({name: 'tumeric', amount: 30});
  ingredients.add([strawberry, cabbage, tumeric]);

  var juice1 = new Juice({name: 'Big Juice', ingredients: ingredients});

  var ingredients2 = new IngredientCollection();
  var cacao = new Ingredient({name: 'cacao', amount: 7 });
  var chia_pets = new Ingredient({ name: 'chia pets', amount: 9});
  var durian = new Ingredient({ name: "durian", amount: 1});
  ingredients2.add([cacao, chia_pets, durian]);
  var juice2 = new Juice({name: 'Mega Juice', ingredients: ingredients2 });
  juices.add([juice1, juice2]);

  var juiceListView = new JuiceListView({collection: juices, el: $('#juice-name')});

  juiceListView.render();




})