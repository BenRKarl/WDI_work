var Router = Backbone.Router.extend({
  initialize: funciton{
    this.$body = $('body');
  }
  routes: {
    '' : 'index',
    'hello/:name'    : 'hello',
    'add/:x/:y'      : 'add',
    'subtract/:x/:y' : 'subtract',
    'multiply/:x/:y' : 'multiply',
    'divide/:x/:y'   : 'divide',
    'square/:x'      : 'square',
    'sqroot/:x'      : 'sqroot'
  },
  index: function(){
    $('body').html('welcome to my calculator');
  },
  hello: function(name){
    $('body').html('Hello ' + name);
  },
  add: function(x,y){
    $('body').html(parseInt(x) + parseInt(y));
  },
  subtract: function(x,y){
    this.$body.html(parseInt(x) - parseInt(y));
  },
  multiply: function(x,y){
    $('body').html(parseInt(x) * parseInt(y));
  },
  divide: function(x,y){
    $('body').html(parseInt(x) / parseInt(y));
  },
  square: function(x){
    $('body').html(parseInt(x) * parseInt(x));
  },
  sqroot: function(x){
    $('body').html(Math.sqrt(parseInt(x)));
  },
});

$(function(){
  var router = new Router();
  Backbone.history.start();
})
