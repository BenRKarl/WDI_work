// Using your C.R.U.D. app from last night
// Implement a model and collection in javascript (as seen in class)
// The model must have a el attribute and a render function.
// Do NOT place the elements on the screen. Manually verify the model's behaviors in the console.
// The collection must have a models attribute and a fetch method.
// fetch should make an ajax request to your rails app's server. After fetch is evaluated the models attribute of the collection should contain Javascript model's corresponding to each of your rows in your database.
// Do NOT place the elements on the screen. Call fetch in the console. Manually verify the models are in the collection afterwards.

console.log('Hello from your scripts.js file!');


// MODEL
function Car(carJSON) {
  this.make = carJSON.make;
  this.year = carJSON.year;
  this.id = personJSON.id;
}


// VIEW
function CarView(model) {
  this.model = model;
  this.el = undefined;
}

CarView.prototype.render = function() {
  var newElement = $('<li>').html(this.model.make);
  this.el = newElement;
  return this;
};


// COLLECTION
function CarsCollection() {
  this.models = {};
}

CarsCollection.prototype.add = function(carJSON) {
  var newCar = new Car(carJSON);
  this.models[carJSON.id] = newCar;
  $(this).trigger('addFlare');
  return this;
}

CarsCollection.prototype.create = function(paramObj) {
  var that = this;
  $.ajax({
    url: '/cars',
    method: 'post',
    dataType: 'json',
    data: { car: paramObj },
    success: function(data) {
      that.add(data);
    }
  })
}

CarsCollection.prototype.fetch = function() {
  var that = this;
  $.ajax({
    url: '/cars',
    dataType: 'json',
    success: function(data){
      for (i in data) {
        that.add(data[i]);
      }
    }
  })
};



function clearAndDisplayCars() {

  $('.cars').html('');

  for (i in carsCollection.models) {
    var car = carsCollection.models[i];
    var carView = new CarView(car);
    $('.cars').append(carView.render().el);
  }
}

var carsCollection = new CarsCollection();

$(function(){

  carsCollection.fetch();

  $(carsCollection).on('addFlare', function(){
    clearAndDisplayCars();
  });

  $('.make-form').on('submit', function(e){
    e.preventDefault();
    var newMake = $('.make-form input[make="make"]').val();
    $('.make-form input[make="make"]').val('');
    carsCollection.create({make: newMake});
  })
})


