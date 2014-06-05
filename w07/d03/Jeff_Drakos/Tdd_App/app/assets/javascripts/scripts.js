
function Dog(id, name, email){
  this.name = name;
  this.age = age;
  this.el = undefined;
}
Dog.prototype.render = function(){
 var newLi = $('<li>').html(this.name);
 this.el = newLi;
 return this;
}

function DogsCollection(){
  this.models = {};
};

DogsCollection.prototype.fetch = function(){
  var that = this;

  $.ajax({
    url: '/dogs',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newDog = new Dog(ele.id, ele.name, ele.age);
        that.models[ele.id] = newDog;
      })
    }
  })
};

$(function(){
  var dogsCollection = new DogsCollection();
  dogsCollection.fetch();
})
