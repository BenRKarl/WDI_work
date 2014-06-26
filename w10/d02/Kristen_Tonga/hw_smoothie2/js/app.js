// **** PAGE LOAD ****
$(function(){
  console.log("sigh and let go... ")

  juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
    collection: juiceCollection,
    el: $('.juice-collection')
  });

  ingredientCollection = new IngredientCollection();
  ingredientListView = new IngredientListView({
    collection: ingredientCollection,
    el: $('.ingredient-list-test')
  });

  var rad = new Juice({name: 'Rad Rool'});
  var radish = new Ingredient({ingredient: 'radish'});
  rad.get('ingredients').add(radish);
  // rad.get('ingredient').add({ingredient: 'rutabaga'});
  // rad.get('ingredient').add({ingredient: 'rasberry'});
  var radView = new JuiceView({model: rad});
  var radishView = new IngredientView({model: radish})
  $('.juice-test').append(radishView.render().el);
  juiceCollection.add(rad);
  ingredientCollection.add(radish);

  $('.new-juice').on('submit', function(e){
    e.preventDefault();
    var nameField = $('.juice-name');
    var juiceName = nameField.val();
    nameField.val('')
    juiceCollection.add({name: juiceName});
  })


})
