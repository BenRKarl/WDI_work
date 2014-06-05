//-----model------
function Person(id, name, weather){
  this.id = id;
  this.name = name;
  this.weather = weather;
  this.el = undefined;
}

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this
}


//------colllection-------

function People(){
  this.models = {};
};

People.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newPerson = new Person(ele.id, ele.name, ele.weather);
        that.models[ele.id] = newPerson;
      })
    console.log(data);
    }
  })
}
People.fetch()
