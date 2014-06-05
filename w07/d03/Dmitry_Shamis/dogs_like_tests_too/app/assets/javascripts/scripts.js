console.log('Bow wow wow yippy yo yippy yay');

function Dog(name, breed) {
  this.name = name;
  this.breed = breed;
  this.el = undefined;
}

Dog.prototype.render = function() {
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this;
}

function Pack() {
  this.models = {};
}

Pack.prototype.fetch = function () {
  var that = this;

  $.ajax({
    url: '/dogs',
    dataType: 'json',
    success: function(data) {
      $(data).each(function(index, element) {
        var newDog = new Dog(element.name, element.breed);
        that.models[element.id] = newDog;
      });
    }
  })
}

$(function() {
  var pack = new Pack();
  pack.fetch();
})
