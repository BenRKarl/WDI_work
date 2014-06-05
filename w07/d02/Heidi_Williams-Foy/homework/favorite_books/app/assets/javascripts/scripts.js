console.log('These are my models and collections')

function Book(id, title, author){
  this.id = id;
  this.title = title;
  this.author = author;
  this.el = undefined;
}

Book.prototype.render = function(){
  var newLi = $('<li>').html(this.title);
  this.el = newLi;
  return this;
};

function BookCollection(){
  this.models = {};
};

BookCollection.prototype.fetch = function(){
  var that = this;

  $.ajax({
    url: '/books',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newBook = new Book(ele.id, ele.name, ele.email);
        that.models[ele.id] = newBook;
      })
    }
  })

};

$(function(){
	var booksCollection = new BookCollection();

  console.log('DEMO:  Before fetch: bookCollection.models: ', booksCollection.models)

  setTimeout(function(){
    console.log('FETCHING...')
    booksCollection.fetch();
  }, 1000)

  setTimeout(function(){
    console.log('DEMO:  After fetch: booksCollection.models: ', booksCollection.models)
  }, 2000)

  setTimeout(function(){
    console.log('DEMO:  Manually update the DOM with the model\'s rendered el')

    $('.books').html('')
    for(idx in booksCollection.models){
      var model = booksCollection.models[idx];
      var newEle = model.render().el;
      $('.books').append(newEle);
    }

  }, 3000)

})
