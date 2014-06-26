
var Book = Backbone.Model.extend({
  defaults:{
    title: 'n/a',
    author: 'n/a'
  }
});

var BookPainter = Backbone.View.extend({
  initialize: function(){
    this.
  }
  tagName: 'span',
  template: _.template('<div><h1><%= title %></h1><h2><%= author %></h2></div>'),
  render: function(){
    this.$el.empty();

    var titleH2 = $('<h2>').html(this.model.get('title'));
    var authorH3 = $('<h3>').html(this.model.get('author'));
    this.$el.append(titleH2))
    this.$el.append(authorH3));

    this.$el.html(this.template(this.model.attributes ) )

    return this;
  }

})


var classicBook = new Book({title: 'The Lichard in the Rye', author: 'Lichard DeGray'});


$(function(){

var classicBookPainter = new BookPainter({el: $('.book-sock'), model: classicBook});
classicBookPainter.render();

})



