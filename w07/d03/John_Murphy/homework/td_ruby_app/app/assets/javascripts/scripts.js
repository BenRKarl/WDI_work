

function User(id, name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

User.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this
}

function UsersCollection(){
  this.models = {};
}

UsersCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/users',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newUser = new User(ele.name, ele.email)
        that.models[ele.id] = newUser
      })
    }
  })
}

var usersCollection
$(function(){
  usersCollection = new UsersCollection();
  usersCollection.fetch()
})
