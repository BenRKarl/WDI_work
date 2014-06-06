
console.log('Cars are cool, man.');


// MODEL
function Car(carJSON) {
  this.make = carJSON.make;
  this.year = carJSON.year;
  this.id = carJSON.id;
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
  console.log(paramObj);
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
    //var newMake = $('.make-form input[make="make"]').val();
    var newMake = $('#new-car').val();
    $('#new-car').val('');
    console.log(newMake);
    carsCollection.create({make: newMake});
  })
})


