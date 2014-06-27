var BananaBone = BananaBone || { Models: {}, Collections: {}, Views: {} };

  BananaBone.Views.MonkeyView = Backbone.View.extend({
    initialize: function(){
      this.listenTo(this.model, 'all', this.render)
      this.listenTo(this.model, 'destroy', this.remove)
    },
    tagName: 'li',
    template: _.template($('#monkey-template').html()),
    editTemplate: _.template($('#edit-monkey-template').html()),
    render: function(){
      this.$el.html(this.template({monkey: this.model.toJSON()}));
      return this;
    },
    events: {
      'click [data-action="release"]': "releaseMonkey",
      'click [data-action="edit"]': "renderEditForm",
      'mouseover': 'wiggle'
    },
    releaseMonkey: function(){
      this.model.destroy()
      return this;
    },
    renderEditForm: function(){
      var that = this
      this.$el.html( this.editTemplate({monkey: this.model.toJSON()}) );
      this.$el.find('form').on('submit', function(e){
        e.preventDefault();
        var nameField = that.$el.find('input');
        var newName = nameField.val();
        that.model.set('name', newName);
      })

      return this;
    },
    wiggle: function(){
      var deg = (Math.random() * 2) - 1;
      this.$el.css('transform', 'rotate('+deg+'deg)');
      return this;
    }

  });
