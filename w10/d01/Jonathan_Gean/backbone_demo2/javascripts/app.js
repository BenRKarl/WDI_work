// **model**
var Book = Backbone.Model.extend({
  defaults:{
    title: 'n/a',
    author: 'n/a'
  }
});
// var Person = Backbone.Model.extend({});

// var PersonView = Backbone.View.extend({
//   template: _.template('<div><h1><%= name %></h1><h2><%= age %></h2></div>'),
//   render: function(){
//     this.$el.html(this.template( this.model.attributes ))
//     return this
//   }
// })
// **View**
var BookPainter = Backbone.View.extend({
  tagName: 'span',
  template: _.template('<div><h2><%= title %></h2><h3><%= author %></h3></div>'),
  render: function(){
    this.$el.empty();
     this.$el.html(this.template( this.model.attributes ))


    return this;
  }
});


var classicBook = new Book({title: 'Lichard in the Rye', author: 'Lichard deGray'});

$(function(){
  var classicBookPainter = new BookPainter({el: $('.book-sock'), model: classicBook});
  classicBookPainter.render();
})
