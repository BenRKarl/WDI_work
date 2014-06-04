 //Constructor function for creating Javascript objects
var person = function(){
  this.userName = $('.text-field').val();
  return this;
};

person.prototype = {
  el: function(){
    var name = person.userName;
    var objectEl = $('div').text(name);

    console.log(el)
  }
}

$(function(){

  $('.form-input').on('submit', function(e){
    e.preventDefault();
    var name = new person($('.text-field').val());
    var el = $('.text-field').val();
    $('.add-text-field').append(el);
    console.log(name)
  })
})
//  need to create element first, then use a callback "once el is created append it to the DOM"


