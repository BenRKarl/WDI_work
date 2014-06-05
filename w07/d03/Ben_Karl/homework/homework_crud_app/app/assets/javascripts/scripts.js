function User(name){
  this.name = name;
  this.el = undefined;
};

User.prototype.render = function(){
  var emptyLi = $('<li>');
  var fullLi = emptyLi.html(this.name);
  this.el = fullLi;
};

function UserCollection(){
  this.models = {};
};

UserCollection.prototype = {

  fetch: function(){
    var that = this;
    $.ajax({
      url: '/users',
      dataType: 'json',
      success: function(data){
        for (var i = 0; i < data.length; i++){
          var newUser = new User(data[i].name);
          that.models[i] = data[i];
        }
      }
    })
  }
}
