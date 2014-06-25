// ** Model **
var Author = Backbone.Model.extend({
  defaults: {
    name: 'anonymous'
  }
});


// ** Collection **

var AuthorCollection = Backbone.Collection.extend({
model: Author

//manager that knows how to manage authors!!
});


// ** View **
var AuthorView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'add', this.render);
  },
//if there's nowhere to paint, start with an 'li'.
tagName: 'li',
template: _.template($('#author_template').html()),

render: function(){
  var renderedHtml = this.template( this.model.attributes );
  this.$el.html(html);
  return this;
},
events: {
  'click button[name="free-button"]': 'removeAuthor'
  //where remove (backbone-specific behavior) doesn't destroy the model, only the view
  //(ie. it will reappear in the view once further authors are added.
  //'destroy' clears the model.
  'mouseleave': 'fadeSome',
  'mouseover': 'fadeNone',
  //above are custom behaviors, as opposed to bbn-spcfc behaviors.
},
removeAuthor: function(){
  this.model.destroy();
  this.remove();
},
// scream: function(){
//   console.log('AHHH!!!')
// }

fadeSome:function(){
  this.$el.css('opacity', 1);
},
fadeNone:function(){
  this.$el.css('opacity, 1');
}
});



// ** ListView **

var AuthorListView = Backbone.View.extend({
//Vincent VG = ALV
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  //ie. if someone has been added to the collection, then render it.
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
//for each of the author view models mentioned in the function above....
    var authorView = new AuthorView({model: author});
      //...render me a new view where AV are all VVG's apprentices
      that.$el.append.authorView.render().el;
    });
    return this;
  }
});



//******BOOK ************

var Book = Backbone.Model.extend({

defaults: {
  title: 'working title',

}


});

var BookCollection = Backbone.Collection.extend({
Model: book


});


var BookView = Backbone.View.extend({
  // initialize: function(){
  //   this.listenTo(this.model, 'add', this.render);
  // },
  tagName: 'li',
  template: _.template($('#book_template').html()),

  render: function(){
    this.$el.empty();

    var renderedHtml = this.template( this.model.attributes );
    this.$el.html(html);
  return this;
}
})



var BookListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },


  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(book){
    var bookView = new BookView({book: title});
      that.$el.append( bookView.render().el );
    });
    return this;
  }
});

});


//***** end BOOK *****














var authorCollection;
var authorListView;
//these refer to lines 65 & 66 below
//which are commented out now and unnecessary because we've added
//the initialize function .listenTo above.

$(function(){

  // var
  authorCollection = new AuthorCollection();
  // var
  authorListView = new AuthorListView({collection: authorCollection});
  //authorListView manages the collection from way above when originally mentioned
  //so it is invoked here.
  collection: authorCollection,
  el: $('.street-side-table');
});
  //the canvas being painted already exists on the DOM, so that's why we use the above syntax.

  // authorCollection.add({name: 'Lich'});
  // authorListView.render();
  // the 2 lines above are commented out bcs of ???

  $('form.new-author').on('submit', function(e){
    e.preventDefault();
    var authorNameField = $('.author-name')
    var authorName = authorNameField.val();
    authorNameField.val('');
    //when user hits enter the name just disappears
    authorcollection.add({name: authorName})

  })
})
