console.log('I am a js: hear me be in the asset pipeline!')
// ***** model *****
function Book (id, title, author){
  this.id = BookJSON.id;
  this.title = BookJSON.title;
  this.author = BookJSON.author;
  
}

//***VIEW ****

function BookView(model){
  this.model = model;
  this.el = undefined;
};

BookView.prototype.render = function(){
  var newLi = $('<li>').html(this.model.name);
  this.el = newLi;
  return this;
};


// ***** collection ******

function BooksCollection(){
  this.models = {};
};

BooksCollection.prototype.add = function(bookJSON){
  var newBook = new Book(bookJSON);
  this.models[bookJSON.id] = newBook;
  $(this).trigger('add'); //shoot add signal flare
  return this;
}

BooksCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
      url: '/books',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        that.add(data[idx]);
      })
    }
  })
};

function clearAndDisplayBooksList(){
  $('.books').html('');
  for (idx in BooksCollection.models){
    var book = BooksCollection.models[idx];
    var bookView = new bookView(book);
    $('.books').append(bookView.render().el)
  }
}

$(function(){

   booksCollection.fetch(); 

   $(booksCollection).on('add', function(){  //listen for the add flare
    clearAndDisplayBooksList();
   })
})
