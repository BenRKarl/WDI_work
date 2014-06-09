console.log("I'm a happy js file.")


// ---- model ----

function Book(bookJSON){
   this.title = bookJSON.title;
   this.id = bookJSON.id;
   this.author = bookJSON.author
};


// ---- view ----

function BookView(model){
   this.model = model;
   this.el = undefined;
};

BookView.prototype.render = function(){
   var newElement = $('<li>').html(this.model.title + ' – ' + this.model.author);
   this.el = newElement;
   return this;
};


// ---- collection ----

function BookCollection(){
   this.models = {};
};

BookCollection.prototype.add = function(bookJSON){
   var newBook = new Book(bookJSON);
   this.models[bookJSON.id] = newBook;
   $(this).trigger('add');
   return this;
};

BookCollection.prototype.create = function(paramObject){
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

BookCollection.prototype.fetch = function(){
   var that = this;

   $.ajax({
      url: '/books',
      dataType: 'json', 
      success: function(data){
         for (var i in data){
           that.add(data[i]);
         };
      }
   })

};

// ---- other ----

var bookCollection = new BookCollection;

function clearAndDisplayBookList(){
   
   $('.books').html('');
   $('.book-form input[name="title"]').val('');
   $('.book-form input[name="author"]').val('');

   for (var i in bookCollection.models){
      var book = bookCollection.models[i];
      var bookView = new BookView(book);
      $('.books').append(bookView.render().el);
   };
}

$(function(){

   bookCollection.fetch();

  $(bookCollection).on('add', function(){
   clearAndDisplayBookList();
  })

  $('.book-form').on('submit',function(e) {
     e.preventDefault();
     var newTitle = $('.book-form input[name="title"]').val();
     var newAuthor = $('.book-form input[name="author"]').val();
     bookCollection.create({title: newTitle, author: newAuthor});
  })

})


























