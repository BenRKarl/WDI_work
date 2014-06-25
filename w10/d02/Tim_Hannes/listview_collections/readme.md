# Backbone Collections and ListViews


# Collections
## Learning objectives
1. Create a collection
      collection = new IngredientCollection();
2. Add models to a collection
      collection.add(coconut)
3. Remove models from a collection
      collection.remove(lettuce)
4. Listen to events on collection and trigger callbacks.
      $(function(){
        var ingredients = new IngredientCollection();
        var strawberry = new Ingredient({name: 'strawberry', amount: 13})
        ingredients.on('add', function(){console.log('something was added.')})
        ingredients.add(strawberry);
        ingredients.on('remove', function(){console.log('something was removed.')})
        ingredients.remove(strawberry);
      })

# List View
## Learning Objectives
1. Create a list view
2. Render a list view
3. Listen to events on other objects and fire callbacks.
    this.listenTo(this.collection, 'remove', this.render);
      -when something is removed, re-render list
4. Explain the difference between listenTo and on
    -listenTo- preferred method for listening to events. When you destroy the view, it kills the event listener as well. avoid memory leak.


