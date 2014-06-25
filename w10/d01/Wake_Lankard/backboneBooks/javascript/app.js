// var Book = Backbone.Model.extend({
//   defaults:{
//     title: 'n/a',
//     author: 'n/a'
//   }

// });

// var BookPainter = Backbone.View.extend({
//   tagName: 'span',
//   render: function(){
//     this.$el.empty();
//     var titleH2 = $('<h2>').html(this.model.get('title'));
//     var authorH3 = $('<h3>').html(this.model.get('author'));

//     this.$el.append(titleH2);
//     this.$el.append(authorH3);

//     return this;

//   }
// });

// var classicBook = new Book({ title: 'The Lichard in the Rye', author: 'Lichard DeGray'});

// $(function(){
//   var classicBookPainter = new BookPainter({el: $('.book-sock'), model: classicBook});
//   classicBookPainter.render();
// })


var Book = Backbone.Model.extend({});

var BookView = Backbone.View.extend({
  template: _.template("<div><h2><%= title %></h2><h3><%= author %></h3></div>"),
  render: function(){
    this.$el.empty();
    // var modelAttributes = this.model.Attrubutes;
    // var renderedTemplate = this.template( modelAttributes );
    //this.$el.html( renderedTemplate );
    this.$el.html( this.template(this.model.attrubutes))
    return this;
  }
})
.
var myBook = new Book({title: "Dune", author: "Frank Herbert"});
var bookPainter = new BookView({model: myBook});

$(function(){
  bookPainter.render();
})


