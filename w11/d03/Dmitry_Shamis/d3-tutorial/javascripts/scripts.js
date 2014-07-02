function projectData(data) {
  // Select entire campsite
  var campsite = d3.select('.campsite');

  // Need new tents?
  var tents = campsite.selectAll('li')
                      .data(data)
                      .enter()
                        .append('li');

  // Fill tents
  var tents = campsite.selectAll('li')
                      .data(data)
                      .text(function(d) {
                        return d + ' sleeps here'
                      });

  // Remove any empty tents
  tents.exit().remove();
}
