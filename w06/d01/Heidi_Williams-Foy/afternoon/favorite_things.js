/*##Part 3
###Favorite Things
- Create an array that contains a few of your favorite things (fruits, vegetables, colors, sports teams, whatever).
- Write some code in JavaScript that outputs strings like (for an array of arbitrary length):
  - My #1 favorite baseball team is the New York Mets.
  - My #2 favorite baseball team is the San Francisco Giants*/

  var VegetableArray = ['asparagus', 'celery', 'cauliflower', 'arugula', 'carrots', 'eggplant', 'spinach'];

  for (var element in VegetableArray){
  console.log( VegetableArray[element] + '... is of my  ' + element + ' favorite vegetables.');
  }
