function projectData(data) {
  var campsite = d3.select('.campsite');
  var tents = campsite.selectAll('li')
                      .data(data)
                      .enter()
                      .append('li');
  var tents = campsite.selectAll('li')
                      .data(data)
                      .text(function(d) {
                        return d + ' sleeps here'
                      });
  tents.exit().remove();
}
