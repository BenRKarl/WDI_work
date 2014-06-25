var juiceCollection;
var juiceListView;

$(function() {
  juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
    collection: juiceCollection,
    el: $('.juice-list')
  });

  var apple5 = new Ingredient({name: 'apple', quantity: '5 fruit'});
  var celery = new Ingredient({name: 'celery', quantity: '2 stalks'});
  var orange = new Ingredient({name: 'orange', quantity: '2 fruit'});
  var appleCrisp = new IngredientCollection();
  appleCrisp.add([apple5, celery, orange]);
  var appleCrispView = new IngredientView({collection: appleCrisp});

  var apple2 = new Ingredient({name: 'apple', quantity: '2 fruit'});
  var lime = new Ingredient({name: 'celery', quantity: '1/2 fruit'});
  var strawberries = new Ingredient({name: 'strawberry', quantity: '3 cups'});
  var berryApeeling = new IngredientCollection();
  berryApeeling.add([apple2, lime, strawberries]);
  var berryApeelingView = new IngredientView({collection: berryApeeling});

  var appleJuices = new Juice({name: 'apple juices', ingredients: appleCrisp});
  var berryJuice  = new Juice({name: 'berry juice',ingredients: berryApeeling});

  juiceCollection.add([appleJuices, berryJuice]);

  $('.new-juice').on('submit', function(e) {
    e.preventDefault();
    var juiceName = $('.juice-name').val();
    $('.juice-name').val('');
    juiceCollection.add({name: juiceName});
  });
});
