// var ClassDivsApp = ClassDivsApp || { Models: {}, Collections: {}, Views{}};

// ***** Models
// ClassDivsApp.Models.
var Student = Backbone.Model.extend({
});


// ***** Collections
// ClassDivsApp.Collections.
var StudentCollection = Backbone.Collection.extend({
  model: Student
});


// ***** Views
// ClassDivsApp.Views.
var StudentView = Backbone.View.extend({
  render: function(){
    this.$el.html(this.model.get('name'));
    return this;
  },
  events: {
    'click' : 'changeBackgroundColor',
  },
  changeBackgroundColor: function(){
    this.$el.css('background-color', changeColor() )
  },
});

function changeColor(){
    return '#'+Math.floor(Math.random()*16777215).toString(16);
  }
var StudentListView = Backbone.View.extend({
  render: function(){
  var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(student){
      var studentView = new StudentView({model: student})
      that.$el.append( studentView.render().el );
    })
    return this;
  }
});


// ***** APP
$(function(){

  var proto = [
  'Nessa Nguyen',
  'Jeff Winkler',
  'John Murphy',
  'Jeff Drakos',
  'Rebecca Strong',
  'Gardner Lonsberry' ,
  'Jonathan Gean',
  'Nathaniel Tuvera',
  'Tim Hannes',
  'Aziz Hasanov',
  'Chris Heuberger',
  'Dmitry Shamis' ,
  'Corey Leveen',
  'Paul Hiam',
  'Steven Doran',
  'Ben Karl',
  'Kristen Tonga',
  'Wake Lankard',
  'Carlos Pichardo' ,
  'Paul Gasberra',
  'Andrea Trapp',
  'Heidi Williams-Foy'
  ]

  var collection = new StudentCollection();

  _.each(proto, function(name){
    var model = new Student({name: name});
    collection.add(model)
  });

  var listView = new StudentListView({collection: collection, el: $('.students')});
  listView.render();
});
