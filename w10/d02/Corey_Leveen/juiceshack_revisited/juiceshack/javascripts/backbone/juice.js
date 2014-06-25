// Juices!


// Model
var Juice = Backbone.Model.extend({
  initialize : function(){
    this.set('ingredients', new IngredientCollection());
  },
  defaults : {
    name : 'nameless juice'
  }
});

// Collection
var JuiceCollection = Backbone.Collection.extend({
  model : Juice
});

// View
var JuiceView = Backbone.View.extend({
  initialize : function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName : 'li',
  template : _.template($('.juice-template').html()),
  render : function(){
    var that = this;

    this.$el.html(this.template( this.model.attributes ));

    var ingredientListView = new IngredientListView({
      collection : this.model.get('ingredients'),
      el : this.$el.find('.ingredients-for-juices')
    });
    ingredientListView.render();

    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var nameField = that.$el.find('input');
      var newName = nameField.val();
      nameField.val('');
      that.model.get('ingredients').add( {name : newName} );
    })

    return this;
  },
  events : {
    'click button[name="free-button"]' : 'removeJuice',
  },
  removeJuice : function(){
    this.model.destroy();
    this.remove();
  }
});

// List View
var JuiceListView = Backbone.View.extend({
  initialize : function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName : 'ul',
  render : function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice){
      var juiceView = new JuiceView( {model: juice} );
      that.$el.append(juiceView.render().el);
    });
    return this;
  }
});
