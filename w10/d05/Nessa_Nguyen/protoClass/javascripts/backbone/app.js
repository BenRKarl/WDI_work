proto = [
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
'Andrea Trapp' ]

var Proto = Backbone.Model.extend({});

var ProtoView = Backbone.View.extend({
  //template: _.template($('#proto-template').html()),
  render: function() {
    //var protoEl = this.template(this.model.attributes);
    //this.$el.append(protoEl);
    this.$el.append(this.model.get('name'));
    return this;
  },
  events: {
    'click': 'changeColor'
  },
  changeColor: function() {
    _.each($('div'), function(div) {
      $(div).css('backgroundColor', '#fff');
    });
    var color = _.sample(['orange', 'yellow', 'lightblue', 'lime', 'pink', 'purple']);
    this.$el.css('backgroundColor', color);
  }
})

var ProtoCollection = Backbone.Collection.extend({
  model: Proto
})

var ProtoListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(proto) {
      var protoView = new ProtoView({model: proto});
      that.$el.append(protoView.render().el);
    });
  }
})

$(function() {
  var protos = new ProtoCollection();
  _.each(proto, function(name) {
    protos.add({name: name});
  })
  var protoListView = new ProtoListView({
    collection: protos,
    el: $('.protos')
  });
  protoListView.render();
})
