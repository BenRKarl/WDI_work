




var Author = Backbone.Model.extend({
  defaults: {
    name: 'anonymous'
  }
});

var AuthorView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#author_template').html()),
  render: function() {
    this.$el.html(this.template({author: this.model.toJSON()}));
    return this;
  },
  events: {
    'click button': 'removeAuthor'
  },
  removeAuthor: function() {
    this.model.destroy();
    this.remove();
  }
});

var AuthorCollection = Backbone.Collection.extend({
  model: Author
});

var AuthorListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName: 'ul',
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author) {
      var authorView = new AuthorView({model: author});
      that.$el.append(authorView.render().el);
    });
    return this;
  }
});

$(function() {
  authorCollection = new AuthorCollection();
  var authorListView = new AuthorListView(
    {collection: authorCollection,
    el: $('#street')});
  //authorCollection.add({name: 'Lichard DeGray'});
  //authorCollection.add({name: 'Kathew Bod'});
  $('#author_button').on('click', function(){
    authorCollection.add({name: $('#author_input').val()});
    $('#author_input').val('');
    return false;
  });

});





