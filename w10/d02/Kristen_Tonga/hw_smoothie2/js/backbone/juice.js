// **** MODEL ****

var Juice = Backbone.Model.extend({
  initialize: function(){
    this.set('ingredients', new IngredientCollection());
  },
  defaults:{
    name: 'undefined',
  }
});

// **** COLLECTION ****

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});


// **** VIEW ****

var JuiceView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render)
  },
  tagName: 'li',
  template: _.template( $('#juice-template').html() ),
  render: function(){
    var that = this;
    this.$el.empty();

    this.$el.html( this.template( this.model.attributes ))

    // var listView = new IngredientListView({collection: this.model.get('books'), el: this.$el.find('.ingredients')})
    // listView.render();

    // this.$el.find('form').on('submit', function(e){
    //   e.preventDefault();
    //   var ingredientField = that.$el.find('input[name="ingredient"]');
    //   var ingredient = ingredientField.val();
    //   ingredientField.val('');
    //   that.model.get('ingredients').add({ingredient: ingredient})
    // })
    return this;
  }
});

var JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice){
      var juiceView = new JuiceView({model: juice});
      that.$el.append( juiceView.render().el )
    })
  return this;
  }
});






$(function(){
  console.log("breath... ")
})
