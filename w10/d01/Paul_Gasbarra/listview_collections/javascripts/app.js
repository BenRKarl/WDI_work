
//**** Model  ****
var Ingredient = Backbone.Model.extend({});

var Juice = Backbone.Model.extend({
  model: IngredientCollection
});

//**** Collection ****

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});


var JuiceCollection = Backbone.Collection.extend({
  model: Juice
})

//**** View ****

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($("#ingredient-template").html()),
  render: function(){
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    return this;
  }
})

var IngredientListView = Backbone.View.extend({
  intitialize: function(){
  this.listenTo(this.collection, 'add', this.render);
  this.listenTo(this.collection, 'remove', this.render);
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
})

var JuiceView = Backbone.View.extend({
// // // renders own template with a ul
// // // creates new IngredientListView and passe the JuiceView's ul as the el of the IngredientListView.
// // // calls render on the new ingredient list view.
  tagName: 'ul',
  template: _.template($("#juice-template").html()),//why the template??
  var ingredientListView = new IngredientListView({ //contents of ingredient list??? })
  renderJuice: function(){
      this.$el.html(this.template({juice: this.model.toJSON()}));//what goes here?
      return this;
  }
 })

var JuiceListView = Backbone.Collection.extend({
  tagName 'ul'
  template: _.template($("#"))

})

$(function(){
  strawberry = new Ingredient({name: 'strawberry', amount: 13});
  banana = new Ingredient({name: 'banana', amount: 2});
  coconut = new Ingredient({name: 'coconut', amount: 1});
  pink_juice = new IngredientCollection;
  pink_juice.add(coconut)
  pink_juice.add(banana)
  pink_juice.add(strawberry)



})




