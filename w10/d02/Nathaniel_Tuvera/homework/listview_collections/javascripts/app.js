

$(function(){
  ingredients = new IngredientCollection();
  strawberry  = new Ingredient({name: 'strawberry', amount: 13});
  ingredients.on('add', function(){console.log('something was added')});
  ingredients.add(strawberry);
  ingredients.on('remove', function(){console.log('something was removed')});
  cabbage = new Ingredient({name: 'cabbage', amount: 'one'});
  ingredients.add(cabbage);

  listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list')});
  turmeric = new Ingredient({name: 'turmeric', amount: 30});
  ingredients.add(turmeric);
  ingredients.remove(cabbage);


  juices    = new JuiceCollection();
  JavaJuice = new Juice({name: 'Java Juice', ingredients: ''});
  RubyRed   = new Juice({name: 'Ruby Red', ingredients: ''})
  juices.on('add', function(){console.log('juice added to collection')});
  juices.add(JavaJuice);
  pineapple = new Ingredient({name: 'pineapple', amount: 1});
  starfruit = new Ingredient({name: 'starfruit', amount: 2});
  wheatgrass= new Ingredient({name: 'wheatgrass', amount: 10});
  JavaIngredients = new IngredientCollection();
  JavaIngredients.add(pineapple);
  JavaIngredients.add(starfruit);
  JavaIngredients.add(wheatgrass);
  JavaJuice.set('ingredients', JavaIngredients);

  juiceListView = new JuiceListView({collection: juices, el: $('#juice-list')});

})
