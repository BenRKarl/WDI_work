
//  ***** Model *****
var Author = Backbone.Model.extend({
  defaults: {
    name: 'anonymous'
  }
});

//  ***** Collection *****
var AuthorCollection = Backbone.Collection.extend({
  model: Author
});

//  ***** View *****
var AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render:function(){
    var renderedHTML = this.template( this.model.attributes );
    this.$el.html( renderedHTML );
    return this;
  }
});

//  ***** List View *****
var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(authorModel){
      var authorView = new AuthorView({model: authorModel});
      that.$el.append( authorView.render().el );
    });
    return this;
  }
});



var authorCollection;
var authorListView;

$(function(){

  authorCollection = new AuthorCollection();
  authorListView = new AuthorListView({
      collection: authorCollection,
      el: $('.street-side-table')
    });

})

