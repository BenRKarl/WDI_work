var juiceCollection;
var juiceListView;
var tropicalia;
var berry;
var zinger;

$(function(){

  var juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
    collection: juiceCollection,
    el: $('.juice-bar')
  });

// lichard = new Author({name: 'Lichard DeGray'});
  // lichard.get('books').add({title: 'Count Bodula'});
  // lichard.get('books').add({title: 'The Lichard in the Rye'});
  // lichard.get('books').add({title: 'Bald Potter'});

  // authorCollection.add(lichard)

  var tropicalia = new Juice({name: 'tropicalia'});
  tropicalia.get('ingredients').add({fruit: 'strawberry', 'apple', 'banana'});
  var berry = new Juice({name: 'berry'});
  berry.get('ingredients').add({fruit: 'strawberry', 'blueberry', 'banana'});
  var zinger = new Juice({name: 'zinger'});
  zinger.get('ingredients').add({fruit: 'strawberry', 'lemon', 'ginger'});

  juiceCollection.add(tropicalia)
  juiceCollection.add(berry)
  juiceCollection.add(zinger)
});


  // listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list')});


$('.new-juice').on('submit', function(event){
    event.preventDefault();
    var nameField =  $('.juice-name');
    var juiceName = nameField.val();
    nameField.val('')
    juiceCollection.add({name: juiceName});
  })

})


