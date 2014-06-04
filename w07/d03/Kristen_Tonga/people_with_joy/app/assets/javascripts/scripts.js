console.log('Hello doll. Pain is just a sign that somethings changing.');


// **** model ****
function Person(name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

Person.prototype.render(){
  var li = $('<li>').html(this.name);
  this.el = li;
  return this;
}

// **** collection ****
function People(){
  this.models = {};
}

People.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, obj){
        var newPerson = new Person(obj.name, obj.email);
        that.models[obj.id] = newPerson;

      })
    }
  })
}


// $(function(){
//   $.ajax({
//     url:'/people',
//     dataType: 'json',
//     success: function(data){
//       // $(data).each(function(idx, ele){ ... })
//       data.forEach(function(obj, index){
//           var newPerson = new Person(ele.name, ele.email);
//           console.log(name);
//           $('.people').append(newPerson.render().el);
//       })
//     }
//   })

// });
