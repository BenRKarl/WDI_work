var nameListApp = {
  Item: function(nameInput){
    this.nameInput = nameInput;
    this.el = undefined;
  },
  createName: function(){
    var names = $('.textBox');
    var newItem = new this.Item(names.val())
    var newNode = newItem.render().el;
    $('.nameList').append(newNode);
    return false;
  }
}

nameListApp.Item.prototype.render = function(){
  var listItem = $('<h1>').html(this.nameInput);
  this.el = listItem;
  return this;
};


$(function(){
  $('.nameInput').on('submit', function(){
  return nameListApp.createName();
  });
})
