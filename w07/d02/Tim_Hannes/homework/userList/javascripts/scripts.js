// var Tim = new User('Tim', $('#user-list'))

function User(name, container){
  this.name = name;
  this.container = container;
  this.$el = $('<li/>');
  this.$el.html(this.name);
  this.render()
}

User.prototype = {
  render: function(){
    this.container.append(this.$el)
  }
}

$(function(){
  $('#user-form').on('submit', function(){
    var userName = $('#user').val();
    var container = $('#user-list');
    new User(userName, container);
    return false;
  });
})


// (function($){
// function init(){ // … }
// $(init);
// })(window.jQuery)
// define init

// $("user_btn").click(function(){
//  $(document).append($('#user').val());
// })
