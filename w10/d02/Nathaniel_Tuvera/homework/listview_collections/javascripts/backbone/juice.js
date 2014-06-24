
// ***** Juice MVC *****

// ** Model **
var Juice = Backbone.Model.extend({
  ingredients: IngredientCollection
});

// ** Collection **

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

// ** View **

var JuiceView = Backbone.View.extend({
  tagName: 'ul',
  template: _.template($('#juice-template').html()),
  render: function(){
    console.log(this);
    // var IngredientList = new Ingredient({model: this.model.attributes.name ,el: $('#juice-ingredients')});
    this.$el.html(this.template({ juice: this.model.attributes.name, ingredients: IngredientView}));
    return this;
  }
});

var JuiceListView = Backbone.View.extend({
  intialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice){
      var juiceView = new JuiceView({model: juice});
      var ingredientView = new IngredientView({model: Ingredient});
      that.$el.append(juiceView.render().el);
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});
