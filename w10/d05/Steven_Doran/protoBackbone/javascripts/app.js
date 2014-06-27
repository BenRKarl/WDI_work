var ProtoApp = ProtoApp || { Models: {}, Views: {}, Collections: {}}

ProtoApp.initialize = function() {

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


   var studentCollection = new ProtoApp.Collections.StudentCollection();



   _.each(proto, function(name) {
      var model = new ProtoApp.Models.Student({name: name});
      studentCollection.add(model);
   })


   var studentListView = new ProtoApp.Views.StudentListView({
      collection: studentCollection,
      el: $('.classroom')
   })


   ProtoApp.studentCollection = studentCollection;
   ProtoApp.studentListView = studentListView;

   studentListView.render();

}



$(function() {

   ProtoApp.initialize();


})