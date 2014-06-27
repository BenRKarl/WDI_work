var Model = Backbone.Model.extend({

})

var Router = Backbone.Router.extend({
  initialize: function(){
    this.$body = $('body')
  },
  routes: {
    ''                   : 'index',
    'hello/:name'        : 'hello',
    'add/:x/:y'          : 'add',
    'subtract/:x/:y'     : 'subtract',
    'multiply/:x/:y'     : 'multiply',
    'divide/:x/:y'       : 'divide',
    'tothepowerof/:x/:y' : 'tothepowerof'
  },
  index: function(){
    $('body').html("Welcome to my calculator");
  },
  hello: function(name){
    $('body').html("Hello " + name);
  },
  add: function(x, y){
    $('body').html(parseInt(x)+parseInt(y));
  },
  subtract: function(x, y){
    this.$body.html(parseInt(x)-parseInt(y));
  },
  multiply: function(x, y){
    $('body').html(parseInt(x)*parseInt(y));
  },
  divide: function(x, y){
    $('body').html(parseInt(x)/parseInt(y));
  },
  tothepowerof: function(x, y){
    $('body').html(Math.pow(parseInt(x), parseInt(y)));
  }
});

$(function(){
  var router = new Router();
  Backbone.history.start();
})
