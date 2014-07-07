var Router = Backbone.Router.extend({
  routes: {
    ''            : 'index',
    'hello/:name' : 'hello',
    'add'         : 'add',
    'subract'     : 'subtract'
    },
    index: function(){
      $('body').html("Calculator");
    },
    hello: function(name){
      $('body').html("Hello" + name);
    },
    add: function(x, y){
      $('body').html(parseInt(x) + parseInt(y));
    },
    subtract: function(x, y){
      $('body').html(parseInt(x) - parseInt(y));
    }
  }
});

$(function(){
  var router = new Router();
  Backbone.history.start();
})
