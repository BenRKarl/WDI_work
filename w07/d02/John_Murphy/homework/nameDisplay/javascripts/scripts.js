
$(function(){

  function Name(name){
    this.name = name
    this.el = undefined
  }

  Name.prototype = {
    render: function(){
     var nameEl = $('<p>').html(this.name)
     this.el = nameEl
     return this
    }
  }

  $('#inputForm').on('submit', function(e){
    e.preventDefault()
    var person = new Name($('#inputField').val())
    $('#display').html(person.render().el)
  })

})
