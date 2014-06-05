

function UserModel(name){
  this.name = name;
  
}


//*********** VIEW *****************

function UserView(model){
  this.model = model;
  this.el = undefined;
}




UserView.prototype.render = function(){
  var newLi = $('<li>').html(this.model.name);
  this.el = newLi;
  return this;
};




// ***** Collection *****
function UsersCollection(){
  this.models = [];
};

UsersCollection.prototype.fetch = function(){
  var that = this;

  $.ajax({
    url: '/users',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var userModel = new UserModel(ele.name);
        that.models.push(userModel);
      });
    }
  });
}











//********MODEL************

// function User(name){
//   this.name = name;
//   this.el = undefined;
// }



// User.prototype.render = function(){
//   var newLi = $('<li>').html(this.name);
//   this.el = newLi;
//   return this;
// };




// // ***** Collection *****
// function UsersCollection(){
//   this.models = {};
// };

// UsersCollection.prototype.fetch = function(){
//   var that = this;

//   $.ajax({
//     url: '/users',
//     dataType: 'json',
//     success: function(data){
//       $(data).each(function(idx, ele){
//         var newUser = new User(ele.name);
//         that.models[ele.name] = newUser;
//       });
//     }
//   });
//   return this;
// };