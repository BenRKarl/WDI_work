//Variables to use in console for testing
var strawberries = new Ingredient({name: 'strawberries', amount: 5});
var chocolate = new Ingredient({name: 'chocolate', amount: '4 bars'});
var pecans = new Ingredient({name: 'pecans', amount: 24});

var ingredientView = new IngredientView({model: pecans});

var ingredientCollection = new IngredientCollection();
ingredientCollection.add(strawberries);
ingredientCollection.add(chocolate);
ingredientCollection.add(pecans);

var ingredientCollectionView = new IngredientCollectionView({collection: ingredientCollection});

$(function(){

  $('form.new-juice-form').submit(function(event){
    event.preventDefault();
    //get the name of the new juice from the user input
    var newJuiceNameField = $('.new-juice-name');
    var newJuiceName = newJuiceNameField.val();
    //clear the value of the user input for UI purposes
    newJuiceNameField.val('');
    //create a new Juice Model with the name value from the user
    var newJuice = new JuiceModel({name: newJuiceName});
    //create a new Juice View and provide the new Juice to it
    var newJuiceView = new JuiceView({
          model: newJuice,
          el: $('.juice-list')
        });
    //render the new Juice on the screen
    newJuiceView.render().el;
  })

});
