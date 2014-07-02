
Array.prototype.sample = function() {
  var idx = Math.floor(this.length * Math.random());
  return this[idx]
};



function projectData(data) {
  var svg = d3.select('svg');
  var circles = svg.selectAll('circle')
                      .data(data)
                      .enter()
                      .append('circle');


  var circles = svg.selectAll('circle')
                      .data(data)
                      .transition()
                        .duration(500)
                      .attr('r', function(data) {
                        return data.r + 'px';
                        })
                      .attr('cx', function(data) {return data.x + '%';})
                      .attr('cy', function() {return Math.random()*100 + '%';})
                      .style('opacity', function() { return Math.random() + 1; })
                      .style('fill', function() { return crayola.sample().hex; });

  svg.selectAll('circle')
    .data(data)
      .exit()
      .remove();

}

$(function() {
  d3.select('svg')
    .attr('width', '100%')
    .attr('height', '75%')
    .style('border', '1px solid black');

  setInterval(function() {
    projectData([{r: 30, x: 10},
                 {r: 30, x: 20},
                 {r: 30, x: 30},
                 {r: 30, x: 40},
                 {r: 30, x: 50},
                 {r: 30, x: 60},
                 {r: 30, x: 70},
                 {r: 30, x: 80},
                 {r: 30, x: 90}
                 ]);
  }, 500);
});
