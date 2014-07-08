protos = ['Nessa Nguyen','Jeff Winkler','John Murphy','Jeff Drakos','Rebecca Strong','Gardner Lonsberry','Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis','Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo','Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'];

var ProtoModel = Backbone.Model.extend({});

var ProtoCollection = Backbone.Collection.extend({
  model: ProtoModel
});

var ProtoView = Backbone.View.extend({
  // tagName: "li",
  render: function() {
    this.$el.html(this.model.get("name"));
    return this;
  },
  events: {
    "click" : "changeColor"
  },
  changeColor: function() {
    this.$el.css("background-color", randomColor());
  }
});

function randomColor() {
  return "#" + Math.floor(Math.random()*16777215).toString(16);
}

var ProtoListView = Backbone.View.extend({
  // tagName: "ul",
  render: function() {
    var that = this;
    // this.$el.empty();
    _.each(this.collection.models, function(i) {
      var eachProto = new ProtoView({model: i});
      that.$el.append(eachProto.render().el);
    });
    return this;
  }
})

$(function() {
  var newCollection = new ProtoCollection();

  _.each(protos, function(student) {
    var newModel = new ProtoModel({name: student});
    newCollection.add(newModel);
  });
  var listView = new ProtoListView({collection: newCollection, el: $("body")});
  listView.render();
})

