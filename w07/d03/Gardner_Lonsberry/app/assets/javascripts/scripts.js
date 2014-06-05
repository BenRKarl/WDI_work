console.log('I am a js file in the asset pipeline')



function Person(name, email){
  this.name = name;
  this.email = email;
this.el = undefined;
}

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
}
$(function(){

  $.ajax({
      url: "/people",
      dataType: 'json',
      success: function(data){
      
        $(data).each(function(idx, ele){
          var newLi = $('<li>').html(ele.name)
          $('.people').append(newLi)
        })
      }
  })
})