//***************** model *******************
function Book(title, author){
  this.title = title;
  this.author = author;
  this.el = undefined;
};

Book.prototype.render = function(){
  var newLi = $('<li>').html(this.title);
  this.el = newLi;
  return this;
};

//************* collection ****************
function BooksCollection() {
  this.models = {};
};

BooksCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/books',
    datatype: 'json',
    success: function(data){
      console.log(data);
      $(data).each(function(idx, ele){
        var newBook = new Book(ele.title, ele.author);
        that.models[ele.id] = newBook;
      })
    }
  })
};

$(function(){
  var booksCollection = new BooksCollection();
  booksCollection.fetch();
})