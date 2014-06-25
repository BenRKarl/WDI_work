// ***** JUICE *********
// ** Model **
var Juice = Backbone.Model.extend({
  initialize: function(){
    this.set('ingredients', new JuiceCollection());
   },
  defaults:{
    title: '',
  }
});


// ** Collection **
var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});


// *** VIEWS ***
    // ** View for one juice **
    var JuiceView = Backbone.View.extend({
      initialize: function(){
        this.listenTo(this.model, 'all', this.render);
      },
      tagName: 'li',
      template: _.template($('#juice-template').html()),
      render: function(){
        var that = this;

        var renderedHTML = this.template( this.model.attributes );
        this.$el.html( renderedHTML );

        var ingredientListView = new IngredientListView({
          collection: this.model.get('ingredients'),
          el: this.$el.find('.ingredient-list')
        });
        ingredientListView.render();

        this.$el.find('form').on('submit', function(e){
          e.preventDefault();
          var titleField = that.$el.find('input');
          var newTitle = titleField.val();
          titleField.val('');
          that.model.get('ingredients').add({title: newTitle});
        })

      return this;
      },
      events: {
        'click button[name="free-button"]': 'removeJuice',
      },
      removeJuice: function(){
        this.model.destroy();
        this.remove();
      }
    });

    // ** ListView All Juices **
    var JuiceListView = Backbone.View.extend({
      initialize: function(){
        this.listenTo(this.collection, 'all', this.render)
      },
      tagName: 'ul',
      render: function(){
        var that = this;
        this.$el.empty();
        _.each(this.collection.models, function(juiceModel){
          var juiceView = new JuiceView({model: juiceModel});
          that.$el.append(juiceView.render().el);
        });
        return this;
      }
    });
