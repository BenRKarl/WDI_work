var juiceCollection;
var juiceListView;


$(function(){
  var recipe = new Recipe();
  var tumeric = new Ingredient({name: "tumeric", amount: 6});
  recipe.add(tumeric)
   juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
      collection: juiceCollection,
      el: $('#juices')
    });

  $('form.new-juice').on('submit', function(e){
    e.preventDefault();
    var juiceNameField = $('.juice-name');
    var juiceName = juiceNameField.val();
    juiceNameField.val('');
    juiceCollection.add({name: juiceName});
  })


  // var recipe = new Recipe();
  // strawberry = new Ingredient({name: 'strawberry', amount: 12});
  // recipe.on('add', function(){console.log('something added')});
  // recipe.add(strawberry);
  // recipe.on('remove', function(){console.log('removed')});
  // //recipe.remove(strawberry);
  // var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  // recipe.add(cabbage);
  // recipeView = new RecipeView({collection: recipe, el: $('#recipe')});
  // var tumeric = new Ingredient({name: "tumeric", amount: 6});
  // recipeView.collection.add(tumeric);
  // var tomato = new Ingredient({name: 'tomato', amount: 2})
  // var recipe2 = new Recipe();
  // recipe2.add(tomato);

  //recipeView.render();

  // juice1 = new Juice({name: '1', recipe: recipe});
  // view1 = new JuiceView({model: juice1});
  // juices = new JuiceCollection();
  // juicesView = new JuiceListView({collection: juices, el: $('#juices')});
  // juices.add(juice1);
  // juiceDue = new Juice({name: 'Due!', recipe: recipe2});
  // juices.add(juiceDue);


});
