// Using your C.R.U.D. app from last night
// Implement a model and collection in javascript (as seen in class)
// The model must have a el attribute and a render function.
// Do NOT place the elements on the screen. Manually verify the model's behaviors in the console.
// The collection must have a models attribute and a fetch method.
// fetch should make an ajax request to your rails app's server. After fetch is evaluated the models attribute of the collection should contain Javascript model's corresponding to each of your rows in your database.
// Do NOT place the elements on the screen. Call fetch in the console. Manually verify the models are in the collection afterwards.

console.log('Hello from your scripts.js file!');

function Car(make, year) {
  this.make = make;
  this.year = year;
  this.el = undefined;
}

Car.prototype.render = function() {
  this.el = this.name;
  return this;
};


// collection
function CarsCollection() {
  this.models = {};
};

CarsCollection.prototype.fetch = function() {
  var that = this;

  $.ajax({
    url: '/cars',
    dataType: 'json',
    success: function(data) {
      $(data).each(function(idx, ele){
        var newCar = new Car(ele.id, ele.make, ele.year);
        that.models[ele.id] = newCar;
      })
    }
  });
};
