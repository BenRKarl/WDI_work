


var Book = Backbone.Model.extend({
  defaults: {
    title: 'n/a',
    author: 'n/a'
  }
});



var BookPainter = Backbone.View.extend({
  initialize: function() {
    //this.listenTo
  },
  tagName: 'span',
  template: _.template('<h1><%= title %></h1><h4>by <%= author %></h4>'),
  render: function(){
    this.$el.empty();
    //title = $('<h1>').html(this.model.get('title'));
    //author = $('<h4>').html('by ' + this.model.get('author'));
    this.$el.html(this.template(this.model.attributes));
    return this;
  }

});

$(function(){

  classicBook = new Book({title: 'The Lichman', author: 'L D G'});
  classicBookPainter = new BookPainter({el: $('.book'), model: classicBook});
  classicBookPainter.render();

});








