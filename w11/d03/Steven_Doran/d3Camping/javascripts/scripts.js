

function projectData(data) {

   // Select entire campsite
   var campsite = d3.select('.campsite');

   // Need new tents? If so... build them
   var tents = campsite.selectAll('li')
                       .data(data)
                       .enter()
                       .append('li');

   // Fill the tents
   var tents = campsite.selectAll('li')
                       .data(data)
                       .text(function(camper) {
                          return camper + ' sleeps here'
                       });

   // Any empty tents? Remove them?
   tents.exit().remove();         
};

