var morningBackbone = morningBackbone || { Models : {}, Collections : {}, Views : {} };

morningBackbone.initialize = function(){

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
'Andrea Trapp',
'Heidi Williams-Foy'
];

  var protoCollection = new morningBackbone.Collections.ProtoCollection();
  _.each(proto, function(p){
    pro = new morningBackbone.Models.Proto( {name: p} );
    protoCollection.add(pro);
  });

  var protoListView = new morningBackbone.Views.ProtoListView({
    collection : protoCollection,
    el : $('.proto-parade')
  });
};


$(function(){
  morningBackbone.initialize();
})
