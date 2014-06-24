// MODELS
var Author = Backbone.Model.extend({
  defaults: {
    name: 'undefined'
  }
});

var AuthorCollection = Backbone.Collection.extend({
  model: Author
});


// VIEW
var AuthorView = Backbone.View.extend({
  template: _.template('<li><%= name %></li>'),
  render: function(){
    this.$el.html( this.template (this.model.attributes))
    return this
  }
});

var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var aView = new AuthorView({model: author});
      that.$el.append(aView.render().el)
    })
    return this;
  }
});



// ON PAGE LOAD

var authorCollection
var authorListView

$(function(){
  console.log("ah, yes.")

  var lich = new Author({name: 'Lich G'});
  var lichView = new AuthorView({model: lich});
  $('.lich').append(lichView.render().el);
  console.log(lichView.render().el);

  authorCollection = new AuthorCollection();
  authorListView = new AuthorListView({
    collection: authorCollection,
    el: $('.list-view')
  });

  authorCollection.add({name: 'Lich'});
})
