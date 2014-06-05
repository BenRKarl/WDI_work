function User(name){
  this.name = name;
  this.el = undefined;
}

User.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this;
};




// ***** Collection *****
function UsersCollection(){
  this.models = {};
};

UsersCollection.prototype.fetch = function(){
  var that = this;

  $.ajax({
    url: '/users',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newUser = new User(ele.name);
        that.models[ele.name] = newUser;
      });
    }
  });
  return this;
};