$( document ).ready(function() {

  function MyName(name) {
    this.name = name;
  }

  MyName.prototype = {
    display: function() {
      $(".form").submit(function(e) {
        e.preventDefault();
        console.log("shit works");
        var input = $(".text").val();
        // $("h1").html(input);
        $("h1").append(input);
      });
    }
  }

  var me = new MyName("");
  me.display();

});