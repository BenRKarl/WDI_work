//***************** model *******************
function Book(bookJSON){
  this.title = bookJSON.title;
  this.author = bookJSON.author;
  this.el = undefined;
};


//********** View *************************
function BookView(model){
  this.model = model;
  this.el = undefined;
}

BookView.prototype.render = function(){
  var newElement = $('<div>').html(this.model.title);
  this.el = newElement;
  return this;
}


//************* collection ****************
function BooksCollection() {
  this.models = {};
};

BooksCollection.prototype.add = function(bookJSON){
  var newBook = new Book(bookJSON);
  this.models[bookJSON.id] = newBook;
  $(this).trigger('modelAdded');
  return this;
}

BooksCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/books',
    dataType: 'json',
    success: function(data){
        for (idx in data){
          that.add(data[idx]);   
      }
    }
  })
};



function clearAndDisplayBookList(){

  $('.books').html('');

  for(idx in booksCollection.models){
    var book = booksCollection.models[idx];
    var bookView = new BookView(book);
    $('.books').append(bookView.render().el)
  }
}


var booksCollection = new BooksCollection();

$(function(){
  booksCollection.fetch();

  $(booksCollection).on('modelAdded', function() {
    clearAndDisplayBookList();
  })
})


