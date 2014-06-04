 //Constructor function for creating Javascript objects
var person = function(userName){
  this.userName = $('.text-field').val();
};

person.prototype = {

}

$(function(){

  $('.form-input').on('submit', function(e){
    e.preventDefault();
    var el = $('.text-field').val();
    $('.add-text-field').append(el);
  })
})
//  need to create element first, then use a callback "once el is created append it to the DOM"


