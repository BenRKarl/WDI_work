// ** MODEL **
var Book = Backbone.Model.extend({
  defaults:{
    title: 'n/a',
    author: 'n/a'
  }
});

// ** VIEW **
var bookPainter = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render());
  },
  tagName: 'span',
  template: _.template('<h1><%= title %></h1><h2><%= author %></h2>'),
  render: function(){
    this.$el.html( this.template(this.model.attributes) );
    return this;
  }
});


$(function(){

  var wizardOfOz = new Book({ title: "The Wizard of Oz", author: 'Lichard DeGray' });

  //Painging on existing DOM element
  var Picasso = new bookPainter({el: $('.book-sock'), model: wizardOfOz});
  Picasso.render();

})



