var Author = Backbone.Model.extend({

});

var AuthorCollection = Backbone.Collection.extend({
  model : Author
});

var AuthorView = Backbone.View.extend({
  tagName : 'li',
  template : _.template($('#author-template').html()),
  render : function(){
    var html = this.template( {author : this.model.toJSON()});
    this.$el.html(html);
    return this;
  }
});

var AuthorListView = Backbone.View.extend({
  tagName : 'ul',
  render : function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var authorView = new AuthorView( {model : author} );
      that.$el.append( authorView.render().el );
    });
    return this;
  }
});

$(function(){
  var lichard = new Author( {name : 'Lichard DeGray'} );
  var lichardView = new AuthorView( {model : lichard} );
  lichardView.render().el;

  var authorCollection = new AuthorCollection();
  authorCollection.add( lichard );
  authorCollection.add( {name : 'Kathew Bod'} );
  var authorListView = new AuthorListView( {collection : authorCollection, el : $('#author-list')} );
  authorListView.render().el;
})
