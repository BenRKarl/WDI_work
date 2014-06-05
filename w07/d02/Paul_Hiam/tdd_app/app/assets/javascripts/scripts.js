console.log('I am a js: hear me be in the asset pipeline!')
// ***** model *****
function Book (id, title, author){
  this.id = id;
  this.title = title;
  this.author = author;
  this.el = undefined;
}
Book.prototype.render = function(){
  var newLi = $('<li>').html(this.name);     
  this.el = newLi;
}

// ***** collection ******

function Books(){
  this.models = {};
};
Books.prototype.fetch = function(){
  var that = this;
  $.ajax({
      url: '/books',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newBook = new Book(ele.id, ele.title, ele.author);
        that.models[ele.id] = newBook;
      })
    }

  })
}