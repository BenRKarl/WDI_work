// --- BEFORE REFACTORING ---

// $(function(){

//    $.ajax({
//       url: '/people',
//       dataType: 'json',  
//       success: function(data){
//          var listEl = $('.people'); 
//          for (i in data){
//             var name = data[i].name;
//             var email = data[i].email;
//             var personEl = $("<li>").html(name + ' – ' + email).               addClass('name')
//             listEl.append(personEl);
//          };
//       }
//    });
   
// });

//
// --- OR -------------------

// $(function(){

//    $.ajax({
//       url: '/people',
//       dataType: 'json',  
//       success: function(data){
//          for (i in data){
//             var newPerson = new Person(data[i].name, data[i].emai;);
//             $('.people').append(newPerson.render().el);
//          }
         
//       }
//    });
   
// });
            
// --------------------------

console.log('I am a js file in the asset pipeline')

// --- model ---
function Person(id, name, email){
   this.id = id;
   this.name = name;
   this.email = email;
   this.el = undefined;
}

Person.prototype.render = function(){
   var newLi = $('<li>').html(this.name + ' – ' + this.email)
   this.el = newLi;
   return this;
};

// --- collection ---
function PeopleCollection(){
   this.models = {};
};

PeopleCollection.prototype.fetch = function(){
   var that = this;

   $.ajax({
      url: '/people',
      dataType: 'json',
      success: function(data){
         for (i in data){
            var newPerson = new Person(data[i].id, data[i].name, data[i].email);
            that.models[data[i].id] = newPerson;
         };
      }
   })

};

$(function(){

   var peopleCollection = new PeopleCollection();

   console.log('Before fetch', peopleCollection.models)

   setTimeout(function(){
      peopleCollection.fetch();
   }, 1000);

   setTimeout(function(){
      console.log('After fetch', peopleCollection.models)
   }, 2000);

   setTimeout(function(){
      for (i in peopleCollection.models){
         var model = peopleCollection.models[i];
         var newEle = model.render().el;
         $('.people').append(newEle)
      };
   }, 3000);

   setTimeout(function(){
      $.ajax({
         url: '/people',
         method: 'post',
         data: {person: {name: 'Liv', email: 'ler@bim.bim'}}
      })
   }, 4000); 

   setTimeout(function(){
      console.log('yay')
      peopleCollection.fetch();
   }, 5000);

   setTimeout(function(){
      $('.people').html('');
      for (i in peopleCollection.models){
      var model = peopleCollection.models[i];
      var newEle = model.render().el;
      $('.people').append(newEle)
      };
   }, 6000);





})



