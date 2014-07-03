var Router = Backbone.Router.extend({
  initialize: function(){
    this.$body = $('body');
  },

  routes: {
    ''  : 'index',
    'hello/:name' : 'hello',
    'add/:x/:y' : 'add',
    'subtract/:x/:y' : 'subtract',
    'multiply/:x/:y' : 'multiply',
    'divide/:x/:y' : 'divide',
  },
  index: function(){
    $('body').html("welcome to my calculator");
  },
  hello: function(name){
    $('body').html("Hello "+ name);
  },
  add: function(x,y){
    $('body').html('x + y = ' + parseInt(parseInt(x)+parseInt(y)));
  },
  subtract: function(x,y){
    $('body').html('x - y = ' + parseInt(parseInt(x)-parseInt(y)));
  },
  multiply: function(x,y){
    $('body').html('x * y = ' + parseInt(parseInt(x)*parseInt(y)));
  },
  divide: function(x,y){
    this.$body.html('x / y = ' + parseFloat(parseFloat(x)/parseFloat(y)));
  },
});

$(function(){
  var router = new Router();
  Backbone.history.start(); // starts recording the browsing history

})