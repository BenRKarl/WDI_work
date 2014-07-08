
var proto = ['Nessa Nguyen',
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
'Heidi Williams-Foy']


var Student = Backbone.Model.extend({});

var Class = Backbone.Collection.extend({
  model: Student
});

var StudentView = Backbone.View.extend({
  tagName: 'div',
  render: function() {
    this.$el.html(this.model.get('name'));
    return this;
  },
  events: {
    'click' : 'divClicked'
  },
  divClicked : function() {
    console.log("clicked");
    this.$el.css("background-color", randomColor());
  }
});

function randomColor(){
  return '#'+Math.floor(Math.random()*16777215).toString(16);
}


var ClassListView = Backbone.View.extend({
  render: function() {
    var that = this;
    _.each(this.collection.models, function(student) {
      var studentView = new StudentView({model: student});
      that.$el.append(studentView.render().el);
    });
    return this;
  }
});


$(function() {

  protoClass = new Class();
  classListView = new ClassListView({collection: protoClass, el: $('.protos')});

  _.each(proto, function(student){
    protoClass.add({name: student});
  });

  classListView.render();
});



