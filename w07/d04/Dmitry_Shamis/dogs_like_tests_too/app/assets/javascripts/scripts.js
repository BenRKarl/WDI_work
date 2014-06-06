console.log('Bow wow wow yippy yo yippy yay');

function Dog(dogJSON) {
  this.name = dogJSON.name;
  this.breed = dogJSON.breed;
  this.id = dogJSON.id;
}

function DogView(model) {
  this.model = model;
  this.el = undefined;
}

DogView.prototype.render = function() {
  var newElement = $('<div>').html(this.model.name + " the " + this.model.breed);
  this.el = newElement;
  return this;
}

function Pack() {
  this.models = {};
}

Pack.prototype.add = function(dogJSON) {
  var newDog = new Dog(dogJSON);
  this.models[dogJSON.id] = newDog;
  $(this).trigger('add');
  return this;
}

Pack.prototype.create = function(paramObject) {
  var that = this;
  $.ajax({
    url: '/dogs',
    method: 'post',
    dataType: 'json',
    data: {dog: paramObject},
    success: function(data) {
      that.add(data);
    }
  })
}

Pack.prototype.fetch = function () {
  var that = this;

  $.ajax({
    url: '/dogs',
    dataType: 'json',
    success: function(data) {
      for(i in data) {
        that.add(data[i]);
      }
    }
  })
}

function clearAndRefreshDogList() {
  $('.dogs').html('');

  for(i in pack.models) {
    var dog = pack.models[i];
    var dogView = new DogView(dog);
    $('.dogs').append(dogView.render().el)
  }
}

var pack = new Pack();

$(function() {
  pack.fetch() // How perfect is that?

  $(pack).on('add', function() {
    clearAndRefreshDogList();
  })

  $('.dog-form').on('submit', function(e) {
    e.preventDefault();
    var newName = $('.dog-form .name').val();
    var newBreed = $('.dog-form .breed').val();
    pack.create({name: newName, breed: newBreed})
  })
})
