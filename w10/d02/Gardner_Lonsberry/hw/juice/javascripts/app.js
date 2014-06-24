var jucieCollection;
var juiceListView;
var ingredientCollection = new IngredientCollection({ingredient: "strawberry"});



$(function(){

  juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
    collection: juiceCollection,
    el: $('.street-cart')
  });

  $('.new-juice').on('submit', function(e){
    e.preventDefault();
    var nameField =  $('.juice-name'); 
    var juiceName = nameField.val();
    nameField.val('')
    juiceCollection.add({name: juiceName});
  })
  $('.new-ingredient').on('submit', function(e){
    e.preventDefault();
    var nameField =  $('.ingredient-name'); 
    var juiceName = nameField.val();
    nameField.val('')
    juiceCollection.add({name: juiceName});
  })

})
