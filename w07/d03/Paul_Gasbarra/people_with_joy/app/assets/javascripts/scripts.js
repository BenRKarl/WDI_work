console.log("I am a js file. The asset pipleine dost flow")

function Person(id, name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
   this.el = newLi;
}

//******collection******
function People(){
  this.models = {};
}

People.prototype.fetch = function(){
  var that = this;

  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newPerson = new Person(ele.id, ele.name, ele.email);
        that.models[ele.id] = newPerson;

      })
    }
  })

};



