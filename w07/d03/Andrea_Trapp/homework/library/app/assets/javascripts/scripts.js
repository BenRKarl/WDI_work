console.log("I am a js file in the asset pipeline");

// ********   model   *********
function Book(id, title, author){
  this.id = id;
  this.title = title;
  this.author = author;
  this.el = undefined;
}

Book.prototype.render = function(){
  var newLi = $('<li>').html(this.title).addClass('book');
  this.el = newLi;
  return this;
}


// ********   collection   *********

// Books is a constructor function for an object that manages a collection ( a bunch of books )
function Books(){
  this.models = {};
};

Books.prototype.fetch = function() {
  var that = this;

  $.ajax({
    url: '/books',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, elem){
        var newBook = new Book(elem.id, elem.title, elem.author);
        that.models[elem.id] = newBook; 
      })
    }
  })
};

// now as we have the book(s) constructor and prototype, we can show them 
$(function(){
  var booksCollection = new Books();

  console.log('Before fetch', booksCollection.models);

  setTimeout(function(){
    booksCollection.fetch();
  }, 1000);

  setTimeout(function(){
    console.log('After fetch', booksCollection.models);
  }, 2000);

  setTimeout(function(){
    console.log('After after fetch', booksCollection.models);

    for(idx in booksCollection.models){
      var book = booksCollection.models[idx];
      var bookEl = book.render().el;
      $('.books').append(bookEl);
    }

  }, 3000);

  // setTimeout(function(){
  //   $.ajax({
  //     url: '/books',
  //     method: 'post',
  //     data: {book: {title: 'In 80 Stunden um die Welt'}}
  //   })
  // }, 4000);

  // setTimeout(function(){
  //   booksCollection.fetch();
  // }, 5000);

  // setTimeout(function(){
  //   $('.books').html('');

  //   for(idx in booksCollection.models){
  //     var book = booksCollection.models[idx];
  //     var bookEl = book.render().el;
  //     $('.books').append(bookEl);
  //   }
    
  // });


})

// $(function(){
//   $.ajax({
//     url: '/people',
//     success: function(data){
//       console.log(data);
//       // do stuff with data, which is an array !!!!!!!!!!

//       // before refactoring with Constructor and Prototype
//       // $(data).each(function(idx, ele){
//       //   console.log(ele.name);
//       //   var personLi = $('<li>').html(ele.name).addClass('person');
//       //   $('.people').append(personLi);
//       // })

//       // after refactoring with Constructor and Prototype
//       //   $(data).each(function(idx, ele){
//       //   console.log(ele.name);
//       //   var newPerson = new Person(ele.name, ele.email);;
//       //   $('.people').append(newPerson.render().el);
//       // })

//       // before refactoring with Constructor and Prototype - my original Version 
//       // var peopleArray = data;
//       // for (var i = 0; i < peopleArray.length; i++){
//       //   var personLi = $('<li>').html(peopleArray[i].name).addClass('person');
//       //   $('.people').append(personLi);
//       // }
      
//       // after refactoring with Constructor and Prototype - my original Version 
//         var peopleArray = data;
//         for (var i = 0; i < peopleArray.length; i++){       
//           var newPerson = new Person(peopleArray[i].name, peopleArray[i].email);
//           var personLi = newPerson.render();
//           $('.people').append(personLi.el);
//         }

//     },
//     //success: callback,  
//     dataType: 'json'
//   })
// })

