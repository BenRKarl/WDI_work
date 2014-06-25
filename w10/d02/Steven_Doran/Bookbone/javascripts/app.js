



// ******* ON LOAD AND STUFF *******

var authorCollection;
var authorListView;

$(function() {
   
   authorCollection = new AuthorCollection();
   authorListView = new AuthorListView({
      collection: authorCollection,
      el: $('.street-side-table')
   });

   $('.author-form').on('submit', function(e) {
      e.preventDefault();
      var authorNameField = $('.author-name');
      var authorName = authorNameField.val();
      authorNameField.val('');
      authorCollection.add({name: authorName});
   })

})

