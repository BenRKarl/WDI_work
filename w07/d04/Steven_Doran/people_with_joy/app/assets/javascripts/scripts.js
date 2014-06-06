console.log('great work')

// **** Model ****

function Person(personJSON){
   this.name = personJSON.name;
   this.id = personJSON.id;
   this.email = personJSON.email;
}


// **** View ****

function PersonView(model){
   this.model = model;
   this.el = undefined;
}

PersonView.prototype.render = function(){
   var newElement = $('<li>').html(this.model.name);
   this.el = newElement;
   return this;
}


// **** Collection ****

function PeopleCollection(){
   this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
   var newPerson = new Person(personJSON);
   this.models[personJSON.id] = newPerson;
   $(this).trigger('add');
   return this;
}

PeopleCollection.prototype.create = function(paramObject){
   var that = this;

   $.ajax({
      url: '/people',
      method: 'post',
      dataType: 'json',
      data: {person: paramObject},
      success: function(data){
         that.add(data);
      }
   })
}



PeopleCollection.prototype.fetch = function(){
   var that = this;

   $.ajax({
      url: '/people',
      dataType: 'json', 
      success: function(data){
         for (i in data){
            that.add(data[i]);          
         };
      }
   })

}


// **** Other ****

function clearAndDisplayPeopleList(){

   $('.people').html('');

   for (var i in peopleCollection.models){
      var person = peopleCollection.models[i];
      var personView = new PersonView(person);
      $('.people').append(personView.render().el);
   };
};


var peopleCollection = new PeopleCollection();


$(function(){

   peopleCollection.fetch();

   $(peopleCollection).on('add', function(){
      clearAndDisplayPeopleList();
   })

   $('.name-form').on('submit', function(e){
      e.preventDefault();
      var newName = $('.name-form input[name="name"]').val();
      peopleCollection.create({name: newName});
  })

})





























