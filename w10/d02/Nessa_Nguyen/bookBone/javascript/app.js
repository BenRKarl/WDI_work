var authorCollection;
var authorListView;

$(function () {
  authorCollection = new AuthorCollection();
  authorListView = new AuthorListView({collection: authorCollection, el: '.author-list'});

  $('.new-author').on('submit', function(e) {
    e.preventDefault();
    var authorName = $('.author-name').val();
    $('.author-name').val('');
    authorCollection.add({name: authorName});
  });

});
