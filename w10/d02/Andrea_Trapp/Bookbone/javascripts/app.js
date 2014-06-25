

// ***************************************************************
// *********************     M A I N      ************************
// ***************************************************************

var authorCollection;
var authorListView;

var bookCollection;
var bookListView;


$(function(){

  // *********************     Author      ************************  
  var lichard = new Author({name: 'Lichard DeGray'});
  var lichardView = new AuthorView({model: lichard});
  lichardView.render().el;
  // This produces a HTML node with the authors name
  
  authorCollection = new AuthorCollection();
  authorCollection.add({name: 'Lichard DeGray'});
  authorCollection.add({name: 'Kathew Bod'});
  authorListView = new AuthorListView({
    collection: authorCollection,
    el: $('#authors-list')  // ==> this connects the collection to the ul in index.html AND puts it on the page !!!! go to 2
  });
  // 2 because its rendered automatically on add we dont need to do it manually here anymore ==> authorListView.render().el;
  // This produces a HTML ul node with author names listed

  $('form.new-author').on('submit', function(e){
    e.preventDefault();
    var authorNameField = $('.author-name');
    var authorName = authorNameField.val();
    authorNameField.val('');
    authorCollection.add({name: authorName});
  });

  // *********************     Book      ************************  
  var greatBook = new Book({title: 'The Great Book'});
  var greatBookView = new BookView({model: greatBook});
  greatBookView.render().el;
  // This produces a HTML node with the title name

  bookCollection = new BookCollection();
  bookCollection.add({title: '80 days around the world'});
  bookCollection.add({title: 'travel guide 2014'});
  bookListView = new BookListView({
    collection: bookCollection,
    // el: $('#books-list')  
  });
  bookListView.render().el;

})
