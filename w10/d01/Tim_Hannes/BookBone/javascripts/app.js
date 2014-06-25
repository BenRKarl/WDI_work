//Model
var Book = Backbone.Model.extend({
  // defaults:{
  //   title: 'n/a',
  //   author: 'n/a'
  // }
});

//View
var BookPainter = Backbone.View.extend({
  tagName: 'span',
    template: _.template('<h2><%= title %></h2><h3><%= author %></h3>'),
    render: function(){
      this.$el.empty(); //whatever is on the booksock, throw it away

      // var modelAttributes = this.model.attributes;
      // var renderedTemplate = this.template( modelAttributes );

        //$el's html should havethe result of the templating function when passes the model's attr.
      this.$el.html( this.template(this.model.attributes))

      return this;

    // var titleH2 = $('<h2>').html(this.model.get('title'))
    // var authorH3 = $('<h3>').html(this.model.get('author'))
    // this.$el.append(titleH2);
    // this.$el.append(authorH3);

    // this.$el.html(this.model.get('title')); // on booksock, set its html to the model's title
    // this.$el.append("<br>" + ' Author: ' + this.model.get('author'));
    // return this;
  }
});

// var sweetBook = new Book({title: 'Sweet Book', author: 'Tim H.'});
// var bodPainter = new BookPainter(model: book);

// var bestBook = new Book({title: 'The Lichard in the Rye', author: 'Kathew Bod'});

var bestBook;
var classicBookPainter;

$(function(){

  bestBook = new Book({title: 'The Lichard in the Rye', author: 'Kathew Bod'});
//painting on an existing DOM element
  classicBookPainter = new BookPainter({el: $('.book-sock'), model: bestBook}); //makes the canvas the booksock, use the bestbook to do it
// hire the book painter to paint on the booksock
  classicBookPainter.render();
//overwrites the default render in the view
})
