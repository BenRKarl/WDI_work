var Author = Backbone.Model.extend({
  defaults: {
    name: 'anonymous'
  }
});

var AuthorCollection = Backbone.Collection.extend({
  model: Author
});

var AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function(){
  var html = this.template( this.model.attributes);
  this.$el.html(html);
  return this;
}
});

var AuthorListView = Backbone.View.extend({
    initalize: function() {
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var authorView = new AuthorView({model: author});
      that.$el.append(AuthorView.render().el);
    });
  return this;
  }
});

$(function() {
  var lichard = new Author({name: 'Lichard DeGray'});
  var lichardView = new AuthorView({model: lichard});
lichardView.render().el
})