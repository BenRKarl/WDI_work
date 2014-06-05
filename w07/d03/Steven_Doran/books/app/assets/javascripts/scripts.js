console.log("I'm a happy js file.")


// ---- book ----

function Book(id, title, author){
   this.id = id;
   this.title = title;
   this.author = author;
   this.el = undefined;
};

Book.prototype.render = function(){
   var newLi = $('<li>').html(this.title + ' by ' + this.author)
   this.el = newLi;
   return this;
};

// ---- collection ----

function BookCollection(){
   this.models = {};
};

BookCollection.prototype.fetch = function(){
   var that = this;

   $.ajax({
      url: '/books',
      dataType: 'json', 
      success: function(data){
         for (var i in data){
            var newBook = new Book(data[i].id, data[i].title, data[i].author);
            that.models[data[i].id] = newBook;
         };
      }
   })
};








