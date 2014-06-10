$(function(){
  console.log("You're good...");
});

var nickRizzo = {
  Name: function(entry){
    this.entry = entry;
    this.elem = undefined;
  },

  addName: function(){
    var userField = $('.name-entry');
    var newEntry = new Name(userField.val())
    var li = $('<li>').text(entry)
    $('.supporters').append(li);
  }
}

$(function(){
  $('.add-name').on('submit', function(e){
    e.preventDefault();
    var entry = $('.name-entry').val();
        var li = $('<li>').text(entry)
    $('.supporters').append(li);
    console.log(entry);
  })
})

