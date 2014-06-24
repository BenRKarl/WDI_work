//Juice Model constructor function
var JuiceModel = Backbone.Model.extend({
  initialize: function(){
    this.set('ingredients', new IngredientCollection());
  },
  defaults:{
    name: "Anonymous Juice"
  }
});

//Juice Model collection function
var JuiceCollection = Backbone.Collection.extend({
  model: JuiceModel
});

//Juice Model view
var JuiceView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'ul',
  template: _.template($('#juice-template').html()),
  render: function(){
    var that = this;

    var renderedHTML = this.template( this.model.attributes );
    this.$el.html(renderedHTML);

    var juiceIngredientCollectionView = new IngredientCollectionView({
                collection: this.model.get('ingredients'),
                el: this.$el.find('.ingredient-list')
              });
    juiceIngredientCollectionView.render();

    this.$el.find('form').submit(function(event){
      event.preventDefault();
      var juiceNameField = that.$el.find('input');
      var juiceName = juiceNameField.val();
      juiceNameField.val('');
      that.model.get('ingredients').add({name: juiceName});
    });

    return this;
  }
});

// //Juice Collection View
// var JuiceCollectionView = Backbone.View.extend({
//   render: function(){
//     var that = this;
//     _.each(this.collection.models, function(juiceModel){
//       var juiceMenu = new JuiceView({model: juiceModel});
//       juiceMenu.render();
//     });
//   }
// });
