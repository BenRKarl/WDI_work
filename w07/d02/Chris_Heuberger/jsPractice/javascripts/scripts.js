$(function(){
  $('.text-input').on('click', function() {
    var text = ($(this).val());
    function Person (text) {
      this.name = $('.text-input');
      this.el = $('<li>').html
    }
    var thePerson = new Person($('.text-input'));
    $('.name-li').append(thePerson);
    });
});
