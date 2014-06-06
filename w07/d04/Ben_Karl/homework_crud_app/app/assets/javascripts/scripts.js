//***** User Model *****
function User(userJSON){
  this.name = userJSON.name;
  this.id = userJSON.id;
};

//***** User View*****
function UserView(model){
  this.model = model;
  this.el = undefined;
}

UserView.prototype.render = function(){
  var emptyLi = $('<li>').html(this.model.name);
  this.el = fullLi;
  return this;
};

//***** User Collection*****
function UserCollection(){
  this.models = {};
};

UserCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/users',
    dataType: 'json',
    success: function(data){
      for (i in data){
        that.add(data[i]);
      }
    }
  })
}

UserCollection.prototype.add = function(userJSON){
  var newUser = new User(userJSON);
  this.models[userJSON.id] = newUser;
  $(this).trigger('addFlare');
  return this;
}

UserCollection.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/users',
    method: 'post',
    dataType: 'json',
    data: {user: paramObject},
    success: function(data){
      that.add(data);
    }
  })
}



