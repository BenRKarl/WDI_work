
//  ************** JUICE **************

//  ******* Model *******
var Juice = Backbone.Model.extend({
  initialize: function(){
    this.set('ingredients', new IngredientCollection());
  },
  defaults:{
    name: '',
  }
});

//  ******* Collection *******
var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

//  ******* View *******
var JuiceView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render)
  },
  tagName: 'li',
  template: _.template( $('#juice-template').html()),
  render: function(){
    var that = this;
    
    var renderedHTML = this.template( this.model.attributes );
    this.$el.html( renderedHTML );

    var ingredientlistView = new IngredientListView({
      collection: this.model.get('ingredients'), 
      el: this.$el.find('#ingredients')
    })
    ingredientlistView.render();
    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var nameField = that.$el.find('input');
      var newIngredient = nameField.val();
      nameField.val('');
      that.model.get('ingredients').add({name: newIngredient})
    })
      return this;
  },
   events: {
    'click button[name="free"]': 'removeJuice'
  },
  removeJuice: function(){
    this.model.destroy();
    return this;
  }

});

var JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName: "ul",
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ele){
      var juiceView = new JuiceView({model: ele});
      that.$el.append( juiceView.render().el )
    })
    return this;
  }
});
