// Juices

//Model
var Juice = Backbone.Model.extend({
  model: IngredientCollection
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'add', this.render)
  }
    this.listenTo(this.model, 'remove', this.render)
  tagName: 'ul',
  template: _.template( $('#juice-template').html() ),

  render: function(){
    var that = this;
    this.$el.empty();

    this.$el.html(this.template( this.model.attributes))

    var listView = new IngredientListView({collection: this.model.get('ingredients'),
      el: this.$el.find('.ingredients')})
    listView.render();

    this.$el.find('form').on('submit', function(event){
      event.preventDefault();
      var fruitField.val('');
      that.model.get('ingredients').add({fruit: fruit})
    });

    return this;
  }
});

var JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render)
    this.listenTo(this.collection, 'remove', this.render)
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice){
      var juiceView = new JuiceView({model: juice});
      that.$el.append(juiceView.render().el);
    });

    return this;
  }
});
