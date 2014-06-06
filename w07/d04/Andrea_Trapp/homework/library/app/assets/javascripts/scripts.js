console.log("I am a js file in the asset pipeline");


// ********   model   *********
function Book(bookJSON){
  this.id = bookJSON.id;
  this.title = bookJSON.title;
  this.author = bookJSON.author;  
}


// ********   view   *********
function BookView(model){  
  this.model = model;
  this.el = undefined;
}

BookView.prototype.render = function(){  
  var newElem = $('<li>').html(this.model.title).addClass('book');
  this.el = newElem;
  return this;
}


// ********   collection   *********

// Books is a constructor function for an object that manages a collection ( a bunch of books )
function Books(){
  this.models = {};
}

Books.prototype.add = function(bookJSON){  
  var newBook = new Book(bookJSON);
  this.models[bookJSON.id] = newBook;  
  $(this).trigger('modelAdded'); // shoot up in the air and add flare
  return this;
}

Books.prototype.create = function(paramObject){
  var that = this;

  $.ajax({
    url: '/books',
    method: 'post',
    dataType: 'json',
    data: {book: paramObject},
    success: function(data){
      that.add(data);
    }
  })
}

Books.prototype.fetch = function() {
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
}

function clearAndDisplayBooksList(){
  $('.books').html('');

  for(idx in booksCollection.models){    
    var book = booksCollection.models[idx];    
    var bookView = new BookView(book);
    $('.books').append(bookView.render().el);
  }
}


var booksCollection = new Books();

$(function(){  
  booksCollection.fetch();
  
  $(booksCollection).on('modelAdded', function(){ // listen for that modelAdded flare
    clearAndDisplayBooksList();
  })

  $('.title-form').on('submit', function(e){
    e.preventDefault();
    var newTitle = $('.title-form input[name="title"]').val();
    $('.title-form input[name="title"]').val('');
    booksCollection.create({title: newTitle});
  })
  
})


