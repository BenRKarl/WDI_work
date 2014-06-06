
// **** Model ****

function User(userJSON){
  this.id = userJSON.id;
  this.username = userJSON.username;
  this.email = userJSON.email;
}

// **** View ****

function UserView(model) {
  this.model = model;
  this.el = undefined;
}

UserView.prototype.render = function(){
  var newElement = $('<h3>').html(this.model.username)
  this.el = newElement
  return this
}


// **** Collection ****


function UsersCollection(){
  this.models = {};
}

UsersCollection.prototype.add = function(userJSON){
  var newUser = new User(userJSON)
  this.models[userJSON.id] = newUser;
  $(this).trigger('add');
  return this
}

UsersCollection.prototype.create = function(paramObject){
  var that = this
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

UsersCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/users',
    dataType: 'json',
    success: function(data){
      for (index in data){
        that.add(data[index])
      }
      console.log(data)
    }
  })
}

function clearAndDisplayUsersList(){
  $('.users').html('')
  for (index in usersCollection.models){
    var user = usersCollection.models[index]
    var userView = new UserView(user);
    $('.users').append(userView.render().el)
  }
}



var usersCollection
$(function(){
  usersCollection = new UsersCollection();
  usersCollection.fetch()

  $(usersCollection).on('add', function(){
    clearAndDisplayUsersList();
  })

  $('#new-user-button').on('click', function(){
    var userName = $('#new-user').val()
    var userEmail = $('#new-user-email').val()
    var newUser = new User({username: userName, email: userEmail})
    usersCollection.create(newUser)
  })

})
