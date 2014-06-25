// ** Model **
var Book = Backbone.Model.extend({
defaults:{
  title: 'n/a',
  author: 'n/a',
  paper: {type: 'cloth'}
  // sets the type of paper for all the objects, to set it for only one, then
//   paper: function(){type: 'cloth'}
}
});



// ** View **
var BookPainter = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render)
  },

  tagName: 'span',
// establishes the type of el. Here, not a div, but a span.
template: _.template('<h2><%= title %></h2><h3><%= author %></h3>'),

  render: function(){
    this.$el.empty();
    //above means give me a primed, clean canvas on which to work

this.$el.html( this.template( this.model.attributes))
//relates to line 22, template: _.template('<h2>.....')

return this;

    // var titleH2 = $('<h2>').html(this.model.get('title'));
    // var authorH3 = $('<h3>').html(this.model.get('author'));

    // this.$el.append(titleH2);
    // this.$el.append(authorH3);
    // this.$el.html(this.model.get('title'));


    // return this;
  }
});


var classicBook;
var classicBookPainter;


$(function(){
//make me a book
var classicBook = new Book({title: 'The Lichard in the Rye', author: 'Lichard DeGray'});

//Painting on existing DOM element

var classicBookPainter = new BookPainter({el: $('.book-sock'), model: classicBook});
//where $book_sock = the 'easel'/canvas -- which overrides the 'span' el above -- and the model = classicBook
classicBookPainter.render();


})



